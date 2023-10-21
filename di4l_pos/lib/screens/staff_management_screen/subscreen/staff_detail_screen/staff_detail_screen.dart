// ignore_for_file: unnecessary_this, curly_braces_in_flow_control_structures, no_leading_underscores_for_local_identifiers
// ignore: curly_braces_in_flow_control_structures

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_contact_type.dart';
import 'package:di4l_pos/enums/staff_detail_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/enums/gender.dart';
import 'package:di4l_pos/screens/staff_management_screen/subscreen/staff_detail_screen/cubit/staff_detail_cubit.dart';
import 'package:di4l_pos/screens/staff_management_screen/cubit/staff_management_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/models/staff_management/response/staff_detail_response.dart';
import 'package:di4l_pos/models/staff_management/response/staff_create_response.dart';
import 'package:di4l_pos/models/business_location/response/business_location_response.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:di4l_pos/route_generator.dart';

class StaffDetailScreen extends StatefulWidget {
  /// MARK: - Initials;
  final StaffDetailType? staffDetailMode;
  final int? id;

  static MultiBlocProvider provider({required StaffDetailType staffDetailMode, int? id}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StaffDetailCubit>(
          create: (context) => StaffDetailCubit(),
        ),
      ],
      child: StaffDetailScreen(staffDetailMode: staffDetailMode, id: id),
    );
  }

  const StaffDetailScreen({
    Key? key,
    this.staffDetailMode,
    required this.id,
  }) : super(key: key);

  @override
  State<StaffDetailScreen> createState() => _StaffDetailScreenState();
}

class _StaffDetailScreenState extends State<StaffDetailScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  final TextEditingController _txtSurName = TextEditingController();
  final TextEditingController _txtFirstName = TextEditingController();
  final TextEditingController _txtLastName = TextEditingController();
  final TextEditingController _txtEmail = TextEditingController();
  final TextEditingController _txtDOB = TextEditingController();
  final TextEditingController _txtcccd = TextEditingController();
  final TextEditingController _txtPhoneNumber = TextEditingController();
  final TextEditingController _txtFbLink = TextEditingController();
  final TextEditingController _txtTwLink = TextEditingController();
  final TextEditingController _txtPerManentAddress = TextEditingController();
  final TextEditingController _txtCurrentAddress = TextEditingController();
  TextEditingController _txtSalary = TextEditingController();
  TextEditingController _txtSaleCommisionPercentage = TextEditingController();
  TextEditingController _txtMaxDisCoutPercent = TextEditingController();
  final TextEditingController _txtAccountHolderName = TextEditingController();
  final TextEditingController _txtAccountNumber = TextEditingController();
  final TextEditingController _txtBankName = TextEditingController();
  final TextEditingController _txtBankIdentifierCode = TextEditingController();
  final TextEditingController _txtBranch = TextEditingController();
  final TextEditingController _txtTaxPayerId = TextEditingController();
  final TextEditingController _txtPassword = TextEditingController();
  final TextEditingController _txtConfirmPassword = TextEditingController();
  final TextEditingController _txtBloodGroup = TextEditingController();
  final TextEditingController _txtAltNumber = TextEditingController();
  final TextEditingController _txtFamilynumber = TextEditingController();
  final TextEditingController _txtSocialMedia1 = TextEditingController();
  final TextEditingController _txtSocialMedia2 = TextEditingController();
  final TextEditingController _txtCustomField1 = TextEditingController();
  final TextEditingController _txtCustomField2 = TextEditingController();
  final TextEditingController _txtCustomField3 = TextEditingController();
  final TextEditingController _txtCustomField4 = TextEditingController();
  final TextEditingController _txtGuardianName = TextEditingController();
  final TextEditingController _txtIdProofName = TextEditingController();
  final TextEditingController _txtIdProofNumber = TextEditingController();
  TextEditingController _txtEssentialsCost = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  bool initData = false;
  bool hideMoreInfo = true;
  bool hideBankInfo = true;
  bool hideSaleInfo = true;
  bool? allowLogin = true;
  Gender gender = Gender.MALE;

  String referralSelected = '-1';
  String rolelSelected = '';
  BusinessLocation? locationSelected;
  String salaryPeriodSelected = 'month';
  String? maritalStatusSelected;

  Map<String, dynamic> rolesList = {};
  List<BusinessLocation> locationsList = [];
  Map<String, dynamic> referralList = {'-1': 'choose_referral_by'.tr};

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    if(widget.staffDetailMode == StaffDetailType.UPDATE) {
      await context.read<StaffDetailCubit>().getStaffDetail(id: widget.id!);
    }
    else if(widget.staffDetailMode == StaffDetailType.ADD) {
      await context.read<StaffDetailCubit>().getStaffCreateInformation();
      Map<String, dynamic> staffList = await getIt<AppPref>().getStaffList();
      referralList.addAll(staffList);
    }
  }

  AppBar _buildAppBar() {
    String? title = 'staff_detail'.tr;
    if(widget.staffDetailMode == StaffDetailType.ADD) title = 'add_staff'.tr;

    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 23),
      elevation: 0.5,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Text(
          title,
          style: GlobalStyles.normalStyle.copyWith(
            color: GlobalColors.primaryWebColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _txtSurName.dispose();
    _txtFirstName.dispose();
    _txtLastName.dispose();
    _txtEmail.dispose();
    _txtDOB.dispose();
    _txtcccd.dispose();
    _txtPhoneNumber.dispose();
    _txtFbLink.dispose();
    _txtTwLink.dispose();
    _txtPerManentAddress.dispose();
    _txtCurrentAddress.dispose();
    _txtSalary.dispose();
    _txtSaleCommisionPercentage.dispose();
    _txtMaxDisCoutPercent.dispose();
    _txtAccountHolderName.dispose();
    _txtAccountNumber.dispose();
    _txtBankName.dispose();
    _txtBankIdentifierCode.dispose();
    _txtBranch.dispose();
    _txtTaxPayerId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StaffDetailCubit, StaffDetailState>(
        buildWhen: (previous, current) =>
            previous.data!.status != current.data!.status,
        builder: (context, state) {
          final _staffDetail = state.data?.staffDetail;
          final _staffCreateInformation = state.data?.staffCreateInfomation;
          final _rolesList = state.data?.staffRoles;
          final _locationsList = state.data?.businesslocations?.data;

          switch (state.data!.status) {
            case StatusType.loading:
              return Scaffold(
                appBar: _buildAppBar(),
                backgroundColor: GlobalColors.bgColor,
                body: Container(
                  child: const AppLoadingWidget(
                    widget: null,
                    text: 'Loading...',
                  ),
                )
              );
            case StatusType.loaded:
              // ignore: unnecessary_null_comparison
              return Scaffold(
                    appBar: _buildAppBar(),
                    backgroundColor: GlobalColors.bgColor,
                    body: _staffDetail != null || widget.staffDetailMode == StaffDetailType.ADD
                      ? _buildContent(
                        staffDetail: _staffDetail, 
                        staffCreateInformation: _staffCreateInformation, 
                        staffRoles: _rolesList ?? {},
                        businessLocationsList: _locationsList ?? []
                      )
                      : const NoDataWidget(),
                    bottomNavigationBar: _staffDetail != null || widget.staffDetailMode == StaffDetailType.ADD
                      ? _buildBottomNavigationBar()
                      : null
                  );
            case StatusType.error:
              return 
                Scaffold(
                  appBar: _buildAppBar(),
                  backgroundColor: GlobalColors.bgColor,
                  body: Container(
                  margin: const EdgeInsets.only(top: 0),
                  child: const Error404Widget()
                )
              );
            default:
              return Scaffold(
                appBar: _buildAppBar(),
                backgroundColor: GlobalColors.bgColor,
                body: const SizedBox.shrink()
              );
          }
        }
    );
  }

  Container _buildBottomNavigationBar (){
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.staffDetailMode == StaffDetailType.UPDATE
              ? Row(
                children: [
                  CustomButton(
                    type: ButtonType.BUTTON_TEXT,
                    color: Colors.white,
                    label: "delete".tr,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.FONT_SIZE_LARGE),
                    borderColor: Colors.red,
                    onPressed: () async {
                      UIHelpers.showCustomDialog(
                        context: Get.context!,
                        title: 'delete_staff'.tr,
                        message: 'confirm_detele'.tr,
                        isShowClose: true,
                        isShowConfirm: true,
                        titleConfirm: 'delete'.tr,
                        onComfirm: () async {
                          navigator!.pop();
                          await context.read<StaffDetailCubit>().deleteStaff(id: widget.id!);
                        },
                      );
                    },
                  ),

                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),

                  CustomButton(
                    type: ButtonType.BUTTON_TEXT,
                    color: GlobalColors.primaryColor,
                    label: "save".tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.FONT_SIZE_LARGE),
                    borderColor: GlobalColors.primaryColor,
                    onPressed: () async {
                      await context.read<StaffDetailCubit>().updateStaff(
                        id: widget.id!,
                        surname: _txtSurName.text,
                        firstName: _txtFirstName.text,
                        lastName: _txtLastName.text,
                        email: _txtEmail.text,
                        referralBy: int.parse(referralSelected) == -1 ? null : int.parse(referralSelected),
                        isActive: 'active',
                        allowLogin: allowLogin! ? '1' : '0',
                        password: _txtPassword.text.isEmpty ? null : _txtPassword.text,
                        confirmPassword: _txtConfirmPassword.text.isEmpty || _txtConfirmPassword.text.isEmpty ? null : _txtConfirmPassword.text,
                        role: rolelSelected.isNotEmpty ? [rolelSelected] : [],
                        accessAllLocations: "access_all_locations",
                        cmmsnPercent: _txtSaleCommisionPercentage.text,
                        maxSalesDiscountPercent: _txtMaxDisCoutPercent.text,
                        dob: _txtDOB.text,
                        gender: gender == Gender.MALE ? 'male' : 'female',
                        numberId: _txtcccd.text,
                        maritalStatus: maritalStatusSelected == 'select_marital_status' ? null : maritalStatusSelected,
                        bloodGroup: _txtBloodGroup.text,
                        contactNumber: _txtPhoneNumber.text,
                        altNumber: _txtAltNumber.text,
                        familyNumber: _txtFamilynumber.text,
                        fbLink: _txtFbLink.text,
                        twitterLink: _txtTwLink.text,
                        socialMedia1: _txtSocialMedia1.text,
                        socialMedia2: _txtSocialMedia2.text,
                        customField1: _txtCustomField1.text,
                        customField2: _txtCustomField2.text,
                        customField3: _txtCustomField3.text,
                        customField4: _txtCustomField4.text,
                        guardianName: _txtGuardianName.text,
                        idProofName: _txtIdProofName.text,
                        idProofNumber: _txtIdProofNumber.text,
                        permanentAddress: _txtPerManentAddress.text,
                        currentAddress: _txtCurrentAddress.text,
                        bankDetails: BankDetail(
                          accountHolderName: _txtAccountHolderName.text,
                          accountNumber: _txtAccountNumber.text,
                          bankName: _txtBankName.text,
                          bankCode: _txtBankIdentifierCode.text,
                          branch: _txtBranch.text,
                          taxPayerId: _txtTaxPayerId.text
                        )
                      );
                    },
                  ),
                ],
              )
              : Container(
                width: 360,
                child: CustomButton(
                    type: ButtonType.BUTTON_TEXT,
                    color: GlobalColors.primaryColor,
                    label: "add_staff".tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.FONT_SIZE_LARGE),
                    borderColor: GlobalColors.primaryColor,
                    onPressed: () async {
                        await context.read<StaffDetailCubit>().createStaff(
                          surname: _txtSurName.text,
                          firstName: _txtFirstName.text,
                          lastName: _txtLastName.text,
                          email: _txtEmail.text,
                          username: _txtEmail.text,
                          referralBy: int.parse(referralSelected) == -1 ? null : int.parse(referralSelected),
                          isActive: 'active',
                          isVerify: 'active',
                          allowLogin: allowLogin! ? '1' : '0',
                          password: _txtPassword.text.isEmpty ? null : _txtPassword.text,
                          confirmPassword: _txtConfirmPassword.text.isEmpty || _txtConfirmPassword.text.isEmpty ? null : _txtConfirmPassword.text,
                          role: rolelSelected.isNotEmpty ? [rolelSelected] : [],
                          accessAllLocations: "access_all_locations",
                          cmmsnPercent: _txtSaleCommisionPercentage.text,
                          maxSalesDiscountPercent: _txtMaxDisCoutPercent.text,
                          dob: _txtDOB.text,
                          gender: gender == Gender.MALE ? 'male' : 'female',
                          numberId: _txtcccd.text,
                          maritalStatus: maritalStatusSelected == 'select_marital_status' ? null : maritalStatusSelected,
                          bloodGroup: _txtBloodGroup.text,
                          contactNumber: _txtPhoneNumber.text,
                          altNumber: _txtAltNumber.text,
                          familyNumber: _txtFamilynumber.text,
                          fbLink: _txtFbLink.text,
                          twitterLink: _txtTwLink.text,
                          socialMedia1: _txtSocialMedia1.text,
                          socialMedia2: _txtSocialMedia2.text,
                          customField1: _txtCustomField1.text,
                          customField2: _txtCustomField2.text,
                          customField3: _txtCustomField3.text,
                          customField4: _txtCustomField4.text,
                          guardianName: _txtGuardianName.text,
                          idProofName: _txtIdProofName.text,
                          idProofNumber: _txtIdProofNumber.text,
                          permanentAddress: _txtPerManentAddress.text,
                          currentAddress: _txtCurrentAddress.text,
                          bankDetails: BankDetail(
                            accountHolderName: _txtAccountHolderName.text,
                            accountNumber: _txtAccountNumber.text,
                            bankName: _txtBankName.text,
                            bankCode: _txtBankIdentifierCode.text,
                            branch: _txtBranch.text,
                            taxPayerId: _txtTaxPayerId.text
                          ),
                          essentialsCost: int.parse(_txtEssentialsCost.text)
                        );
                      },
                  ),
              ),
          
        ],
      ),
    );
  }

  Container _buildContent({
    StaffDetailResponse? staffDetail,
    required StaffCreateResponse? staffCreateInformation,
    required Map<String, dynamic> staffRoles,
    required List<BusinessLocation> businessLocationsList,
  }) {
    if(widget.staffDetailMode == StaffDetailType.UPDATE) {
      rolesList = staffRoles;
      locationsList = businessLocationsList;
      referralList.addAll(staffDetail!.users!);
    }
    else if(widget.staffDetailMode == StaffDetailType.ADD){
      rolesList = staffCreateInformation!.roles!;
      locationsList = staffCreateInformation.locations!;
    }

    if(!initData && widget.staffDetailMode == StaffDetailType.UPDATE){
      allowLogin = staffDetail!.staff!.allowLogin == 1;
    
      if(staffDetail.staff!.surname !=null ) _txtSurName.text = staffDetail.staff!.surname!;
      if(staffDetail.staff!.firstName !=null ) _txtFirstName.text = staffDetail.staff!.firstName!;
      if(staffDetail.staff!.lastName !=null ) _txtLastName.text = staffDetail.staff!.lastName!;
      if(staffDetail.staff!.email !=null ) _txtEmail.text = staffDetail.staff!.email!;
      if(staffDetail.staff!.dob !=null ) _txtDOB.text = DateFormat('dd//MM/yyyy').format(DateTime.parse(staffDetail.staff!.dob));
      if(staffDetail.staff!.gender !=null ) gender = staffDetail.staff!.gender == 'male'? Gender.MALE : Gender.FEMALE;
      if(staffDetail.staff!.numberId !=null ) _txtcccd.text = staffDetail.staff!.numberId;
      if(staffDetail.staff!.contactNumber !=null ) _txtPhoneNumber.text = staffDetail.staff!.contactNumber!;
      if(staffDetail.staff!.bloodGroup !=null ) _txtBloodGroup.text = staffDetail.staff!.bloodGroup!;
      if(staffDetail.staff!.altNumber !=null ) _txtAltNumber.text = staffDetail.staff!.altNumber!;
      if(staffDetail.staff!.familyNumber !=null ) _txtFamilynumber.text = staffDetail.staff!.familyNumber!;
      if(staffDetail.staff!.socialMedia1 !=null ) _txtSocialMedia1.text = staffDetail.staff!.socialMedia1!;
      if(staffDetail.staff!.socialMedia2 !=null ) _txtSocialMedia2.text = staffDetail.staff!.socialMedia2!;
      if(staffDetail.staff!.customField1 !=null ) _txtCustomField1.text = staffDetail.staff!.customField1!;
      if(staffDetail.staff!.customField2 !=null ) _txtCustomField2.text = staffDetail.staff!.customField2!;
      if(staffDetail.staff!.customField3 !=null ) _txtCustomField3.text = staffDetail.staff!.customField3!;
      if(staffDetail.staff!.customField4 !=null ) _txtCustomField4.text = staffDetail.staff!.customField4!;
      if(staffDetail.staff!.guardianName !=null ) _txtGuardianName.text = staffDetail.staff!.guardianName!;
      if(staffDetail.staff!.idProofName !=null ) _txtIdProofName.text = staffDetail.staff!.idProofName!;
      if(staffDetail.staff!.idProofNumber !=null ) _txtIdProofNumber.text = staffDetail.staff!.idProofNumber!;
      if(staffDetail.staff!.essentialsCost !=null ) _txtEssentialsCost.text = staffDetail.staff!.essentialsCost!;
      if(staffDetail.staff!.fbLink !=null ) _txtFbLink.text = staffDetail.staff!.fbLink!;
      if(staffDetail.staff!.twitterLink !=null ) _txtTwLink.text = staffDetail.staff!.twitterLink!;
      if(staffDetail.staff!.permanentAddress !=null ) _txtPerManentAddress.text = staffDetail.staff!.permanentAddress!;
      if(staffDetail.staff!.currentAddress !=null ) _txtCurrentAddress.text = staffDetail.staff!.currentAddress!;
      if(staffDetail.staff!.essentialsSalary !=null ) _txtSalary.text = double.parse(staffDetail.staff!.essentialsSalary!).toString();
      if(staffDetail.staff!.essentialsPayPeriod !=null ) salaryPeriodSelected = staffDetail.staff!.essentialsPayPeriod!;
      if(staffDetail.staff!.maxSalesDiscountPercent !=null ) _txtMaxDisCoutPercent.text = double.parse(staffDetail.staff!.maxSalesDiscountPercent!).toString();
      if(staffDetail.staff!.cmmsnPercent !=null ) _txtSaleCommisionPercentage.text = double.parse(staffDetail.staff!.cmmsnPercent!).toString();
      if(staffDetail.staff!.bankDetails!.accountHolderName !=null ) _txtAccountHolderName.text = staffDetail.staff!.bankDetails!.accountHolderName!;
      if(staffDetail.staff!.bankDetails!.accountNumber !=null ) _txtAccountNumber.text = staffDetail.staff!.bankDetails!.accountNumber!;
      if(staffDetail.staff!.bankDetails!.bankName !=null ) _txtBankName.text = staffDetail.staff!.bankDetails!.bankName!;
      if(staffDetail.staff!.bankDetails!.bankCode !=null ) _txtBankIdentifierCode.text = staffDetail.staff!.bankDetails!.bankCode!;
      if(staffDetail.staff!.bankDetails!.branch !=null ) _txtBranch.text = staffDetail.staff!.bankDetails!.branch!;
      if(staffDetail.staff!.bankDetails!.taxPayerId !=null ) _txtTaxPayerId.text = staffDetail.staff!.bankDetails!.taxPayerId!;

      maritalStatusSelected = staffDetail.staff!.maritalStatus ?? 'select_marital_status';
      referralList = {'-1': 'choose_referral_by'.tr};
      referralList.addAll(staffDetail.users!);
      if(staffDetail.staff!.referralBy !=null) referralSelected = staffDetail.staff!.referralBy.toString();

      if(rolelSelected.isEmpty && staffDetail.role!.isNotEmpty) rolelSelected = rolesList.keys.firstWhere((e) => rolesList[e] == staffDetail.role);
      if(rolelSelected.isEmpty && staffDetail.role!.isEmpty) rolelSelected = rolesList.keys.elementAt(2);

      if(staffDetail.staff!.locationId != null && locationSelected == null) locationSelected = locationsList.firstWhere((e) => e.id == staffDetail.staff!.locationId);
      else if(staffDetail.staff!.locationId == null && locationSelected == null) locationSelected = locationsList[0];
    
      initData = true;
    }
    
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 6),
            Container(
              color: GlobalColors.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('staff_allow_login'.tr, style: const TextStyle(color: Color.fromARGB(205, 49, 49, 49), fontSize: 16, fontWeight: FontWeight.bold)),
                            Switch(
                              activeColor: GlobalColors.primaryColor,
                              value: allowLogin!,
                              onChanged: (bool value) {
                                setState(() {
                                  allowLogin = value;
                                });
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: CustomDropDownWithT<dynamic>(
                          labelText: 'role'.tr,
                          items: rolesList.values.toList().map<DropdownMenuItem<dynamic>>((dynamic e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e, style: const TextStyle(fontSize: 14)),
                          )).toList(),
                          value: rolesList[rolelSelected],
                          onChanged: (dynamic value) => {
                            setState(() {
                              rolelSelected = rolesList.keys.firstWhere((key) => rolesList[key]==value);
                            })
                          }
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtSurName,
                          hintLabel: 'sur_name'.tr,
                        ),
                      ),
                    ],
                  ),
            
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtFirstName,
                          hintLabel: 'first_name'.tr,
                        ),
                      ),
                      const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                      Expanded(
                        child: CustomTextField(
                          controller: _txtLastName,
                          hintLabel: 'last_name'.tr,
                        ),
                      ),
                    ],
                  ),
            
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtEmail,
                          hintLabel: 'email'.tr,
                        ),
                      ),
                    ],
                  ),
            
                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtPassword,
                          isShowPass: true,
                          hintLabel: 'password'.tr,
                        ),
                      ),
                      const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                      Expanded(
                        child: CustomTextField(
                          controller: _txtConfirmPassword,
                          isShowPass: true,
                          hintLabel: 'confirm_password'.tr,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                  Row(
                    children: [
                      Expanded(
                        child: CustomDropDownWithT<dynamic>(
                          labelText: 'referral_by'.tr,
                          items: referralList.values.toList().map<DropdownMenuItem<dynamic>>((dynamic e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e, style: const TextStyle(fontSize: 14)),
                          )).toList(),
                          value: referralList[referralSelected],
                          onChanged: (dynamic value) => {
                            setState(() {
                              referralSelected = referralList.keys.firstWhere((key) => referralList[key]==value);
                            })
                          }
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                ],
              ),
            ),
        
            const SizedBox(height: 6),
        
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              'more_infomation'.tr,
                              style: const TextStyle(
                                fontSize: 15,
                                color: GlobalColors
                                    .primaryColor,
                                fontWeight:
                                    FontWeight.w500,
                              ),
                            ),
                            Icon(
                              !hideMoreInfo
                                  ? Icons.arrow_drop_up
                                  : Icons
                                      .arrow_drop_down,
                              color: GlobalColors
                                  .primaryColor,
                            ),
                          ],
                        ),
                      ),
        
        
                      if(!hideMoreInfo)...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          color: GlobalColors.whiteColor,
                          child: Column(
                            children: [
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtDOB,
                                      readOnly: true,
                                      suffixIcon: const Icon(Icons.calendar_month),
                                      onTap: () async {
                                        await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                                          firstDate: DateTime(1950),
                                          lastDate: DateTime(2200),
                                        ).then((selectedDate) {
                                          if (selectedDate != null) {
                                            _txtDOB.text =
                                                DateFormat('dd//MM/yyyy').format(selectedDate);
                                          }
                                        });
                                      },
                                      hintLabel: 'dob'.tr,
                                    )
                                  ),
                                ],
                              ),
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: RadioListTile<Gender>(
                                      title: Text('male'.tr),
                                      value: Gender.MALE,
                                      groupValue: gender,
                                      onChanged: (Gender? value) {
                                        setState(() {
                                          gender = value!;
                                        });
                                      }
                                    ),
                                  ),
          
                                  Expanded(
                                    child: RadioListTile<Gender>(
                                      title: Text('female'.tr),
                                      value: Gender.FEMALE,
                                      groupValue: gender,
                                      onChanged: (Gender? value) {
                                          setState(() {
                                          gender = value!;
                                        });
                                      }
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtcccd,
                                      hintLabel: 'CCCD/CMND',
                                    ),
                                  ),
                                  const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtPhoneNumber,
                                      hintLabel: 'phone_number'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtAltNumber,
                                      hintLabel: 'alt_phone_number'.tr,
                                    ),
                                  ),
                                  const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtFamilynumber,
                                      hintLabel: 'family_phone_number'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: CustomDropDownWithT<String>(
                                        labelText: 'marital_status'.tr,
                                        items: ['select_marital_status','married','unmarried','divorced'].map<DropdownMenuItem<String>>((String e) => DropdownMenuItem<String>(
                                          value: e,
                                          child: Text(e.tr, style: const TextStyle(fontSize: 14))
                                        )).toList(),
                                        value: maritalStatusSelected,
                                        onChanged: (String? value) => {
                                          setState(() {
                                            maritalStatusSelected = value!;
                                          })
                                        }
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtBloodGroup,
                                      hintLabel: 'blood_group'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtFbLink,
                                      hintLabel: 'facebook_link'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtTwLink,
                                      hintLabel: 'twitter_link'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtSocialMedia1,
                                      hintLabel: 'social_media_1'.tr,
                                    ),
                                  ),
                                  const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtSocialMedia2,
                                      hintLabel: 'social_media_2'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtPerManentAddress,
                                      hintLabel: 'permanent_address'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtCurrentAddress,
                                      hintLabel: 'current_address'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtCustomField1,
                                      hintLabel: 'custom_field_1'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtCustomField2,
                                      hintLabel: 'custom_field_2'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtCustomField3,
                                      hintLabel: 'custom_field_3'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtCustomField4,
                                      hintLabel: 'custom_field_4'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtGuardianName,
                                      hintLabel: 'guardian_name'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtIdProofName,
                                      hintLabel: 'id_proof_name'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtIdProofNumber,
                                      hintLabel: 'id_proof_number'.tr,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                            ],
                          ),
                        )
                      ]
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      hideMoreInfo = !hideMoreInfo;
                    });
                  }
                ),
              ),
            ),

            const SizedBox(height: 6),

            Container(
              color: GlobalColors.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: CustomDropDownWithT<BusinessLocation>(
                      labelText: 'primary_working_location'.tr,
                      items: locationsList.map<DropdownMenuItem<BusinessLocation>>((BusinessLocation e) => DropdownMenuItem<BusinessLocation>(
                        value: e,
                        child: e.locationId!.isNotEmpty 
                                ? Text('${e.name} (${e.locationId})', style: const TextStyle(fontSize: 14))
                                : Text('${e.name}', style: const TextStyle(fontSize: 14))
                      )).toList(),
                      value: locationSelected,
                      onChanged: (BusinessLocation? value) => {
                        setState(() {
                          locationSelected = value!;
                        })
                      }
                    ),
                  )
                ],
              ),
            ),

            Container(
              color: GlobalColors.whiteColor,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtSalary,
                          keyboardKey: TextInputType.number,
                          hintLabel: 'salary'.tr,
                          onchanged: (String? value){
                            _txtSalary = TextEditingController(text: double.parse(value!).toString());
                            // print(double.parse(value));
                          }
                        ),
                      ),
                      const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: CustomDropDownWithT<String>(
                            items: ['month','day','hour'].map<DropdownMenuItem<String>>((String e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text((e+'_salary_period').tr, style: const TextStyle(fontSize: 14))
                            )).toList(),
                            value: salaryPeriodSelected,
                            onChanged: (String? value) => {
                              setState(() {
                                salaryPeriodSelected = value!;
                              })
                            }
                          ),
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          controller: _txtEssentialsCost,
                          keyboardKey: TextInputType.number,
                          hintLabel: 'essentials_cost'.tr,
                          onchanged: (String? value){
                            _txtEssentialsCost = TextEditingController(text: int.parse(value!).toString());
                          }
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                ],
              ),
            ),

            const SizedBox(height: 6),

            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              'sale_infomation'.tr,
                              style: const TextStyle(
                                fontSize: 15,
                                color: GlobalColors
                                    .primaryColor,
                                fontWeight:
                                    FontWeight.w500,
                              ),
                            ),
                            Icon(
                              !hideSaleInfo
                                  ? Icons.arrow_drop_up
                                  : Icons
                                      .arrow_drop_down,
                              color: GlobalColors
                                  .primaryColor,
                            ),
                          ],
                        ),
                      ),

        
                      if(!hideSaleInfo)...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          color: GlobalColors.whiteColor,
                          child: Column(
                            children: [
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtSaleCommisionPercentage,
                                      keyboardKey: TextInputType.number,
                                      hintLabel: 'sale_commission_percentage'.tr,
                                      onchanged: (String? value){
                                        _txtSaleCommisionPercentage = TextEditingController(text: double.parse(value!).toString());
                                      }
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtMaxDisCoutPercent,
                                      keyboardKey: TextInputType.number,
                                      hintLabel: 'max_discout_percent'.tr,
                                      onchanged: (String? value){
                                        _txtMaxDisCoutPercent = TextEditingController(text: double.parse(value!).toString());
                                      }
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
                            ],
                          ),
                        )
                      ]
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      hideSaleInfo = !hideSaleInfo;
                    });
                  }
                ),
              ),
            ),
            
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              'bank_infomation'.tr,
                              style: const TextStyle(
                                fontSize: 15,
                                color: GlobalColors
                                    .primaryColor,
                                fontWeight:
                                    FontWeight.w500,
                              ),
                            ),
                            Icon(
                              !hideBankInfo
                                  ? Icons.arrow_drop_up
                                  : Icons
                                      .arrow_drop_down,
                              color: GlobalColors
                                  .primaryColor,
                            ),
                          ],
                        ),
                      ),

        
                      if(!hideBankInfo)...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          color: GlobalColors.whiteColor,
                          child: Column(
                            children: [
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtAccountHolderName,
                                      hintLabel: 'account_holder_name'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtAccountNumber,
                                      hintLabel: 'account_number'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
          
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtBankName,
                                      hintLabel: 'bank_name'.tr,
                                    ),
                                  ),
                                  const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtBankIdentifierCode,
                                      hintLabel: 'bank_identity_code'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),

                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtBranch,
                                      hintLabel: 'bank_branch'.tr,
                                    ),
                                  ),
                                  const SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                                  Expanded(
                                    child: CustomTextField(
                                      controller: _txtTaxPayerId,
                                      hintLabel: 'tax_payer_id'.tr,
                                    ),
                                  ),
                                ],
                              ),
          
                              const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          
                            ],
                          ),
                        )
                      ]
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      hideBankInfo = !hideBankInfo;
                    });
                  }
                ),
              ),
            ),
        
          ]
        )
      )
    );
  }
}