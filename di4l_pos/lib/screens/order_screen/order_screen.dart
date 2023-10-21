// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables, annotate_overrides, non_constant_identifier_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, use_build_context_synchronously

import 'dart:async';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:after_layout/after_layout.dart' as after_layout;
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/user/response/user_response.dart';
import 'package:di4l_pos/screens/order_screen/subscreen/allOrderTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/order_screen/cubit/order_cubit.dart';
import 'package:di4l_pos/screens/order_screen/widgets/custom_bottom_sheet.dart';
import 'package:di4l_pos/screens/order_screen/widgets/custom_tabbar.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';
import 'package:intl/intl.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/screens/contacts_screen/customers_screen/cubit/customers_cubit.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);
  static MultiBlocProvider providers() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SalesOrderCubit>(
          create: (BuildContext context) => SalesOrderCubit(),
        ),
        BlocProvider<BusinessCubit>(
          create: (BuildContext context) => BusinessCubit(),
        ),
        BlocProvider<CustomersCubit>(
          create: (BuildContext context) => CustomersCubit(),
        ),
      ],
      child: const OrderScreen(),
    );
  }

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with after_layout.AfterLayoutMixin {
  // late TabController _tabController;
  TextEditingController textController = TextEditingController();
  final TextEditingController _txtDateStart = TextEditingController();
  final TextEditingController _txtDateEnd = TextEditingController();
  final TextEditingController _txtDate = TextEditingController();
  List<String> buttonList = [
    "today",
    "yesterday",
    "this_month",
    "last_month",
    "last_30_days",
    "this_year",
    "all",
    'custom_time',
  ];
  // List<String> buttonValue = [
  //   "today",
  //   "yesterday",
  //   "this_month",
  //   "last_month",
  //   "last_30_days",
  //   "this_year",
  //   "all",
  // ];
  String paymentSelect = 'All';
  List<String> paymentStatus = [
    "All",
    "Paid",
    "Due",
    "Parial",
    "Overue",
  ];
  String shipingSelect = 'All';
  List<String> shippingStatus = [
    "All",
    "Ordered",
    "Packed",
    "Shipped",
    "Delivered",
    "Cancelled",
  ];

  late String? titleButton = "all";
  int indexSelected = 6;
  ScrollController? ctr = ScrollController();
  final _appPrefs = getIt<AppPref>();
  UserResponse? user;

  BusinessLocation businessLocation = BusinessLocation(name: 'All', id: null);
  List<BusinessLocation> listBusiness = [];

  ContactModel customer = ContactModel(name: 'All', id: null);
  List<ContactModel> listCustomer = [];

  bool isDone = false;
  List<String> listItem = [
    'Tải báo cáo',
    'In hóa đơn',
    'Shopee',
    'Sổ bán hàng',
  ];
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    user = await _appPrefs.getUser();
    context.read<BusinessCubit>().getList().then((value) {
      setState(() {
        listBusiness.add(businessLocation);
        listBusiness = [...listBusiness, ...value];
      });
    });
    context.read<CustomersCubit>().getAllContacts().then((value) {
      setState(() {
        listCustomer.add(customer);
        listCustomer = [...listCustomer, ...value];
      });
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.endOfFrame.then((value) async {
      // context.read<SalesOrderCubit>().getSell();
      user = await _appPrefs.getUser();
    });

    super.initState();
  }

  DateTime? dateFillter;
  ValueNotifier<List<DateTime?>> datenotic = ValueNotifier([]);
  SingingCharacter typeSingingCharacter = SingingCharacter.tat_ca;
  // DateTime? dateBegin = DateTime.now();
  // DateTime? dateEnd = DateTime.now();
  // void _dateTimeCaculator(SingingCharacter? valueDate) {
  //   switch (valueDate) {
  //     case SingingCharacter.hom_nay:
  //       dateBegin = DateTime(
  //         DateTime.now().year,
  //         DateTime.now().month,
  //         DateTime.now().day,
  //         0,
  //       );
  //       dateEnd = DateTime.now();
  //       break;
  //     case SingingCharacter.tuan_nay:
  //       dateBegin = DateTime(DateTime.now().year, DateTime.now().month,
  //           DateTime.now().day - DateTime.now().weekday + 1);
  //       break;
  //     case SingingCharacter.thang_nay:
  //       dateBegin = DateTime(DateTime.now().year, DateTime.now().month, 1);
  //       break;
  //     case SingingCharacter.tuan_truoc:
  //       dateBegin = DateTime(DateTime.now().year, DateTime.now().month,
  //           DateTime.now().day - DateTime.now().weekday - 7);
  //       dateEnd = DateTime(DateTime.now().year, DateTime.now().month,
  //           DateTime.now().day - DateTime.now().weekday + 1);
  //       break;
  //     case SingingCharacter.thang_truoc:
  //       dateBegin = DateTime(DateTime.now().year, DateTime.now().month - 1, 1);
  //       dateEnd = DateTime(DateTime.now().year, DateTime.now().month - 1,
  //           DateTime(DateTime.now().year, DateTime.now().month, 0).day);
  //       break;
  //     default:
  //       {
  //         dateBegin = null;
  //       }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // datenotic.value = dateFillter;
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black, size: 23),
            elevation: 0.5,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            title: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'orders'.tr,
                style: GlobalStyles.normalStyle.copyWith(
                  color: GlobalColors.primaryWebColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: AnimSearchBar(
                  helpText: 'search'.tr,
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: GlobalColors.primaryWebColor,
                    size: 30,
                  ),
                  suffixIcon: const Icon(Icons.close_fullscreen_outlined),
                  width: 325,
                  boxShadow: false,
                  textController: textController,
                  onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                  },
                  // ignore: avoid_types_as_parameter_names
                  onSubmitted: (String) {
                    textController = textController;
                  },
                ),
              ),

              InkWell(
                onTap: () {
                  filter2();
                },
                child: SvgPicture.asset(
                  GlobalImages.filterIcon,
                  height: 25,
                  width: 25,
                  color: GlobalColors.primaryWebColor,
                ),
              ),

              //const SizedBox(width: 10),
              // PopupMenuButton(
              //   itemBuilder: (BuildContext context) => [
              //     PopupMenuItem(
              //       child: CustomPopupItem(
              //         iconSvg: GlobalImages.downloadIcon,
              //         title: 'download_report'.tr,
              //       ),
              //     ),
              //     PopupMenuItem(
              //       child: CustomPopupItem(
              //         iconSvg: GlobalImages.printIcon,
              //         title: 'Print_invoice'.tr,
              //       ),
              //     ),
              //     const PopupMenuItem(
              //       child: CustomPopupItem(
              //         iconSvg: GlobalImages.shopeeIcon,
              //         title: 'Shopee',
              //       ),
              //     ),
              //     PopupMenuItem(
              //       child: CustomPopupItem(
              //         iconSvg: GlobalImages.bookIcon,
              //         title: 'notes'.tr,
              //       ),
              //     ),
              //   ],
              //   offset: const Offset(0, 50),
              //   child: SvgPicture.asset(
              //     GlobalImages.ellipsisIcon,
              //     height: 25,
              //     width: 25,
              //     color: GlobalColors.primaryWebColor,
              //   ),
              // ),
              const SizedBox(width: 20),
            ],
            bottom: TabBar(
              physics: const ClampingScrollPhysics(),
              // controller: _tabController,
              indicatorColor: GlobalColors.kGreenTextColor,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey.shade700,
              labelColor: GlobalColors.kGreenTextColor,
              isScrollable: true,
              labelPadding: const EdgeInsets.all(0),
              tabs: <Widget>[
                CustomTabBar(title: 'all'.tr),
                // CustomTabBar(title: 'Đợi xử lý'.tr),
                // CustomTabBar(title: 'Processing'.tr),
                // CustomTabBar(title: 'Delivered'.tr),
                CustomTabBar(title: 'return_orders'.tr),
                //CustomTabBar(title: 'cancel_orders'.tr),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // allOrderTab.providers(
              //   textController,
              //   false,
              //   datenotic,
              // ),
              // allOrderTab.providers(
              //   textController,
              //   true,
              //   datenotic,
              // ),
              allOrderTab(
                searchText: textController,
                isReturn: false,
                dateFillter: datenotic,
                startDate: _txtDateStart.text,
                endDate: _txtDateEnd.text,
                isfilter: isFilter,
              ),
              allOrderTab(
                  searchText: textController,
                  isReturn: true,
                  dateFillter: datenotic,
                  isfilter: isFilter),
            ],
          ),
          // floatingActionButton: ClipRRect(
          //   borderRadius: BorderRadius.circular(25),
          //   child: InkWell(
          //     onTap: () => navigator?.pushNamed(
          //       RouteGenerator.selectPorductForOrder,
          //     ),
          //     child: Container(
          //       height: 50,
          //       width: 200,
          //       alignment: Alignment.center,
          //       color: GlobalColors.appBar1,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           const Icon(
          //             FontAwesomeIcons.plus,
          //             color: Colors.white,
          //             size: 17,
          //           ),
          //           const SizedBox(width: 8),
          //           Text(
          //             'create_order'.tr,
          //             style: GlobalStyles.normalStyle.copyWith(
          //               fontWeight: FontWeight.w500,
          //               fontSize: 18,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ));
  }

  filter2() {
    return showModalBottomSheet(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 120),
        enableDrag: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.0),
        )),
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (BuildContext context,
              StateSetter setStatefilter /*You can rename this!*/) {
            return Column(children: [
              Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  height: 4,
                  width: 35,
                  margin: const EdgeInsets.only(bottom: 10)),
              Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                          )),
                      width: double.infinity,
                      child: Scaffold(
                        backgroundColor: Colors.transparent,
                        appBar: AppBar(
                          toolbarHeight: 50,
                          title: Text('filter'.tr,
                              style: GlobalStyles.titilliumRegular(context)
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          automaticallyImplyLeading: false,
                          centerTitle: true,
                          elevation: 0.7,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                          )),
                          actions: [
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.clear,
                                  // size: Dimensions
                                  //     .ICON_SIZE_DEFAULT,
                                ))
                          ],
                        ),
                        body: Container(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Select Date
                                  Row(
                                    children: [
                                      Text(
                                        '${'date'.tr} : ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 100,
                                        alignment: Alignment.centerLeft,
                                        child: DropdownButton<String>(
                                          // alignment: Alignment.center,
                                          onChanged: (value) {
                                            setDate(value!, setStatefilter);
                                            isFilter = true;
                                          },
                                          menuMaxHeight: Get.height * 0.5,
                                          value: titleButton!.isNotEmpty
                                              ? titleButton!
                                              : null,
                                          items: buttonList
                                              .map((e) =>
                                                  DropdownMenuItem<String>(
                                                    value: e,
                                                    child: SizedBox(
                                                      width: 100,
                                                      child: Text(
                                                        e.tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          onTap: () {},
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      (isDone)
                                          ? Container(
                                              child: Flexible(
                                                child: TextFormField(
                                                  controller: _txtDate,
                                                  readOnly: true,
                                                  onTap: () {
                                                    if (titleButton! !=
                                                        'Or custom time') {
                                                      setStatefilter(
                                                        () {
                                                          isFilter = true;
                                                          titleButton =
                                                              'Or custom time';
                                                        },
                                                      );
                                                    }
                                                    selectDate(setStatefilter);
                                                  },
                                                ),
                                              ),
                                            )
                                          : Text(
                                              '${_txtDateStart.text} - ${_txtDateEnd.text}',
                                              style: TextStyle(fontSize: 15)),

                                      // : Text(
                                      //     '${_txtDateStart.text} - ${_txtDateEnd.text}',
                                      //     style: TextStyle(fontSize: 15))
                                    ],
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text('${'business_location'.tr}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                30,
                                        child: Text('${'customers'.tr} ',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                  // select customer - select business
                                  Row(
                                    children: [
                                      Container(
                                        width: 160,
                                        alignment: Alignment.centerLeft,
                                        child: DropdownButton<BusinessLocation>(
                                          // alignment: Alignment.center,

                                          onChanged: (value) {
                                            setStatefilter(() {
                                              isFilter = true;
                                              businessLocation = value!;
                                              print(
                                                  'Business ID :${businessLocation.id}');
                                            });
                                          },
                                          hint: Text('Select business'),
                                          menuMaxHeight: Get.height * 0.5,
                                          value: businessLocation,
                                          items: listBusiness
                                              .map((e) => DropdownMenuItem<
                                                      BusinessLocation>(
                                                    value: e,
                                                    child: SizedBox(
                                                      child: Text(
                                                        e.name.toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          onTap: () {},
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 160,
                                        alignment: Alignment.centerLeft,
                                        child: DropdownButton<ContactModel>(
                                          // alignment: Alignment.center,

                                          onChanged: (value) {
                                            setStatefilter(() {
                                              customer = value!;
                                              isFilter = true;
                                              print(
                                                  'Customer ID :${customer.id}');
                                            });
                                          },
                                          hint: Text('Select business'),
                                          menuMaxHeight: Get.height * 0.5,
                                          value: customer,
                                          items: listCustomer
                                              .map((e) => DropdownMenuItem<
                                                      ContactModel>(
                                                    value: e,
                                                    child: SizedBox(
                                                      child: Text(
                                                        e.name.toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text('payment_status'.tr,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                30,
                                        child: Text('shipping_status'.tr,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      // SizedBox(
                                      //   width: MediaQuery.of(context)
                                      //               .size
                                      //               .width /
                                      //           2 -
                                      //       30,
                                      //   child: Text('User'.tr,
                                      //       style: TextStyle(
                                      //           fontSize: 18,
                                      //           fontWeight: FontWeight.bold)),
                                      // ),
                                    ],
                                  ),
                                  //select payment status  -- //select shipping status
                                  Row(
                                    children: [
                                      Container(
                                        width: 160,
                                        alignment: Alignment.centerLeft,
                                        child: DropdownButton<String>(
                                          // alignment: Alignment.center,

                                          onChanged: (value) {
                                            setStatefilter(() {
                                              isFilter = true;
                                              paymentSelect = value!;
                                              print(
                                                  'Payment Status: $paymentSelect');
                                            });
                                          },
                                          hint: Text('Select Payment Status'),
                                          menuMaxHeight: Get.height * 0.5,
                                          value: paymentSelect,
                                          items: paymentStatus
                                              .map((e) =>
                                                  DropdownMenuItem<String>(
                                                    value: e,
                                                    child: SizedBox(
                                                      child: Text(
                                                        e,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          onTap: () {},
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 160,
                                        alignment: Alignment.centerLeft,
                                        child: DropdownButton<String>(
                                          // alignment: Alignment.center,

                                          onChanged: (value) {
                                            setStatefilter(() {
                                              isFilter = true;
                                              shipingSelect = value!;
                                              print(
                                                  'Shiping Status:  $shipingSelect');
                                            });
                                          },
                                          hint: Text('Select Shiping Status'),
                                          menuMaxHeight: Get.height * 0.5,
                                          value: shipingSelect,
                                          items: shippingStatus
                                              .map((e) =>
                                                  DropdownMenuItem<String>(
                                                    value: e,
                                                    child: SizedBox(
                                                      child: Text(
                                                        e,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: GlobalStyles
                                                                .robotoRegular(
                                                                    context)
                                                            .copyWith(
                                                          fontSize: Dimensions
                                                              .FONT_SIZE_DEFAULT,
                                                        ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          isExpanded: true,
                                          underline: const SizedBox(),
                                          onTap: () {},
                                        ),
                                      ),

                                      // Container(
                                      //     width: 160,
                                      //     alignment: Alignment.centerLeft,
                                      //     child: Text(
                                      //         '${user!.data!.surname} ${user!.data!.firstName} ${user!.data!.lastName}')
                                      //     //     DropdownButton<BusinessLocation>(
                                      //     //   // alignment: Alignment.center,
                                      //     //   onChanged: (value) {
                                      //     //     setStatefilter(() {
                                      //     //       businessLocation = value!;
                                      //     //       print(businessLocation.id);
                                      //     //     });
                                      //     //   },
                                      //     //   hint: Text('Select User'),
                                      //     //   menuMaxHeight: Get.height * 0.5,
                                      //     //   value: businessLocation,
                                      //     //   items: listBusiness
                                      //     //       .map((e) => DropdownMenuItem<
                                      //     //               BusinessLocation>(
                                      //     //             value: e,
                                      //     //             child: SizedBox(
                                      //     //               child: Text(
                                      //     //                 e.name.toString(),
                                      //     //                 textAlign:
                                      //     //                     TextAlign.center,
                                      //     //                 style: GlobalStyles
                                      //     //                         .robotoRegular(
                                      //     //                             context)
                                      //     //                     .copyWith(
                                      //     //                   fontSize: Dimensions
                                      //     //                       .FONT_SIZE_DEFAULT,
                                      //     //                 ),
                                      //     //                 overflow: TextOverflow
                                      //     //                     .ellipsis,
                                      //     //               ),
                                      //     //             ),
                                      //     //           ))
                                      //     //       .toList(),
                                      //     //   isExpanded: true,
                                      //     //   underline: const SizedBox(),
                                      //     //   onTap: () {},
                                      //     // ),

                                      //     ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: Text(
                                            '${'Subscription Package'.tr} ',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Checkbox(
                                        checkColor: Colors.white,
                                        fillColor:
                                            MaterialStateProperty.resolveWith(
                                                getColor),
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setStatefilter(() {
                                            isFilter = true;
                                            isChecked = value!;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ])),
                        bottomNavigationBar:
                            buildButtonBottomSheet(setStatefilter),
                      )))
            ]);
          });
        });
  }

  // buildFilter() {
  //   return showModalBottomSheet(
  //       constraints:
  //           BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 120),
  //       enableDrag: true,
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.vertical(
  //         top: Radius.circular(10.0),
  //       )),
  //       backgroundColor: Colors.transparent,
  //       isScrollControlled: true,
  //       isDismissible: true,
  //       context: context,
  //       builder: (context) {
  //         return Column(
  //           children: [
  //             Container(
  //                 decoration: const BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //                 ),
  //                 height: 4,
  //                 width: 35,
  //                 margin: const EdgeInsets.only(bottom: 10)),
  //             Expanded(
  //               child: Container(
  //                 decoration: const BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius: BorderRadius.vertical(
  //                       top: Radius.circular(10.0),
  //                     )),
  //                 width: double.infinity,
  //                 child: Scaffold(
  //                     backgroundColor: Colors.transparent,
  //                     appBar: AppBar(
  //                       toolbarHeight: 50,
  //                       title: Text('filter'.tr,
  //                           style: GlobalStyles.titilliumRegular(context)
  //                               .copyWith(
  //                                   fontSize: 16, fontWeight: FontWeight.bold)),
  //                       backgroundColor: Colors.white,
  //                       foregroundColor: Colors.black,
  //                       automaticallyImplyLeading: false,
  //                       centerTitle: true,
  //                       elevation: 0.7,
  //                       shape: const RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.vertical(
  //                         top: Radius.circular(10.0),
  //                       )),
  //                       actions: [
  //                         IconButton(
  //                             onPressed: () {
  //                               Navigator.of(context).pop();
  //                             },
  //                             icon: const Icon(
  //                               Icons.clear,
  //                               // size: Dimensions
  //                               //     .ICON_SIZE_DEFAULT,
  //                             ))
  //                       ],
  //                     ),
  //                     body: Container(
  //                       padding: const EdgeInsets.all(15),
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           buildRadioButton(context),
  //                           const SizedBox(height: 20),
  //                           Text('custom_time'.tr),
  //                           Container(
  //                             padding: const EdgeInsets.only(right: 10),
  //                             child: Row(
  //                               // crossAxisAlignment:
  //                               //     CrossAxisAlignment.end,
  //                               children: [
  //                                 Text(
  //                                   'to'.tr,
  //                                   style: const TextStyle(
  //                                     color: GlobalColors.kGreyTextColor,
  //                                   ),
  //                                 ),
  //                                 const SizedBox(
  //                                   width: 20,
  //                                 ),
  //                                 Flexible(
  //                                   child: TextField(
  //                                     controller: _txtDateStart,
  //                                     readOnly: true,
  //                                     onTap: () async {
  //                                       DateTime? dateTime =
  //                                           await showDatePicker(
  //                                               context: context,
  //                                               initialDate: DateTime.now(),
  //                                               firstDate: DateTime(1970),
  //                                               lastDate: DateTime(2101));
  //                                       if (dateTime != null) {
  //                                         print(
  //                                             dateTime); //dateTime output format => 2021-03-10 00:00:00.000
  //                                         String formattedDate =
  //                                             DateFormat('yyyy-MM-dd')
  //                                                 .format(dateTime);
  //                                         print(
  //                                             formattedDate); //formatted date output using intl package =>  2021-03-16
  //                                         //you can implement different kind of Date Format here according to your requirement
  //                                         setState(() {
  //                                           _txtDateStart.text =
  //                                               formattedDate; //set output date to TextField value.
  //                                         });
  //                                       } else {
  //                                         print("Date is not selected");
  //                                       }
  //                                     },
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                           const SizedBox(
  //                             height: 20,
  //                           ),
  //                           Container(
  //                             padding: const EdgeInsets.only(right: 10),
  //                             child: Row(
  //                               children: [
  //                                 Text(
  //                                   'from'.tr,
  //                                   style: const TextStyle(
  //                                     color: GlobalColors.kGreyTextColor,
  //                                   ),
  //                                 ),
  //                                 const SizedBox(width: 10),
  //                                 Container(
  //                                   child: Flexible(
  //                                     child: TextFormField(
  //                                       controller: _txtDateEnd,
  //                                       readOnly: true,
  //                                       onTap: () async {
  //                                         DateTime? dateTime =
  //                                             await showDatePicker(
  //                                                 context: context,
  //                                                 initialDate: DateTime.now(),
  //                                                 firstDate: DateTime(1970),
  //                                                 lastDate: DateTime(2101));
  //                                         if (dateTime != null) {
  //                                           print(
  //                                               dateTime); //dateTime output format => 2021-03-10 00:00:00.000
  //                                           String formattedDate =
  //                                               DateFormat('yyyy-MM-dd')
  //                                                   .format(dateTime);
  //                                           print(
  //                                               formattedDate); //formatted date output using intl package =>  2021-03-16
  //                                           //you can implement different kind of Date Format here according to your requirement
  //                                           setState(() {
  //                                             _txtDateEnd.text =
  //                                                 formattedDate; //set output date to TextField value.
  //                                           });
  //                                         } else {
  //                                           print("Date is not selected");
  //                                         }
  //                                       },
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                     bottomNavigationBar: buildButtonBottomSheet()),
  //               ),
  //             )
  //           ],
  //         );
  //       });
  // }

  // Container buildRadioButton(BuildContext context) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     child: CustomRadioButton(
  //       elevation: 0.1,
  //       fontSize: Dimensions.FONT_SIZE_DEFAULT,
  //       textColor: GlobalColors.kGreyTextColor,
  //       selectedTextColor: GlobalColors.flButtonColor,
  //       buttonBorderColor: GlobalColors.flButtonColor,
  //       buttonLables: buttonList,
  //       buttonValues: buttonValue,
  //       radioButtonValue: (value, index) {
  //         var now = DateTime.now();
  //         var today = DateFormat('yyyy-MM-dd').format(now);
  //         var yesterday = DateFormat('yyyy-MM-dd')
  //             .format(now.subtract(const Duration(days: 1)));
  //         var last30Day = DateFormat('yyyy-MM-dd')
  //             .format(now.subtract(const Duration(days: 30)));
  //         var thisMonthStart =
  //             DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 1));
  //         var thisMonthEnd = DateFormat('yyyy-MM-dd')
  //             .format(DateTime(now.year, now.month + 1, 0));
  //         var lastMonthStart = DateFormat('yyyy-MM-dd')
  //             .format(DateTime(now.year, now.month - 1, 1));
  //         var lastMonthEnd =
  //             DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 0));
  //         var thisYearStart =
  //             DateFormat('yyyy-MM-dd').format(DateTime(now.year, 1, 1));
  //         var thisYearEnd =
  //             DateFormat('yyyy-MM-dd').format(DateTime(now.year + 1, 1, 0));
  //         if (value == 'all') {
  //           _txtDateStart.text = '';
  //           _txtDateEnd.text = '';
  //           setState(() {
  //             titleButton = "all".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'today') {
  //           _txtDateStart.text = today;
  //           _txtDateEnd.text = today;
  //           setState(() {
  //             titleButton = "today".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'yesterday') {
  //           _txtDateStart.text = yesterday;
  //           _txtDateEnd.text = yesterday;
  //           setState(() {
  //             titleButton = "yesterday".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'this_month') {
  //           _txtDateStart.text = thisMonthStart;
  //           _txtDateEnd.text = thisMonthEnd;
  //           setState(() {
  //             titleButton = "this_month".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'last_month') {
  //           _txtDateStart.text = lastMonthStart;
  //           _txtDateEnd.text = lastMonthEnd;
  //           setState(() {
  //             titleButton = "last_month".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'last_30_days') {
  //           _txtDateStart.text = last30Day;
  //           _txtDateEnd.text = today;
  //           setState(() {
  //             titleButton = "last_30_days".tr;
  //             indexSelected = index;
  //           });
  //         } else if (value == 'this_year') {
  //           _txtDateStart.text = thisYearStart;
  //           _txtDateEnd.text = thisYearEnd;
  //           setState(() {
  //             titleButton = "this_year".tr;
  //             indexSelected = index;
  //           });
  //         }
  //       },
  //       horizontal: true,
  //       buttonSpace: 10,
  //       initialSelection: indexSelected,
  //       buttonColor: GlobalColors.bgColor,
  //       selectedColor: GlobalColors.bgColor,
  //       buttonWidth: 150,
  //     ),
  //   );
  // }

  Container buildButtonBottomSheet(StateSetter setState) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 1, color: Colors.black.withOpacity(0.1)))),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(160, 45)),
              onPressed: () {
                setState(() {
                  isFilter = false;
                  businessLocation = listBusiness[0];
                  customer = listCustomer[0];
                  titleButton = 'All';
                  paymentSelect = 'All';
                  shipingSelect = 'All';
                  isChecked = false;
                  _txtDateStart.text = '';
                  _txtDateEnd.text = '';
                  _txtDate.text = '';
                });
              },
              child: Text(
                'reset'.tr,
                style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: GlobalColors.primaryColor),
                backgroundColor: GlobalColors.primaryColor,
                fixedSize: const Size(160, 45)),
            onPressed: () {
              context.read<SalesOrderCubit>().setStateDefault();
              context
                  .read<SalesOrderCubit>()
                  .fillterSell(
                      dateBegin: _txtDateStart.text,
                      dateEnd: _txtDateEnd.text,
                      locationId: businessLocation.id == null
                          ? ""
                          : businessLocation.id.toString(),
                      customerId:
                          customer.id == null ? "" : customer.id.toString(),
                      paymentStatus:
                          paymentSelect == 'All' ? "" : paymentSelect,
                      onlySubscriptions: isChecked ? 1 : 0,
                      shippingStatus:
                          shipingSelect == 'All' ? "" : shipingSelect)
                  .whenComplete(() => Navigator.pop(context));
            },
            child: Text(
              'apply'.tr,
              style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
          )
        ],
      ),
    );
  }

  setDate(String value, StateSetter setState) async {
    var now = DateTime.now();

    var today = DateFormat('yyyy-MM-dd').format(now);

    var yesterday =
        DateFormat('yyyy-MM-dd').format(now.subtract(const Duration(days: 1)));

    var last30Day =
        DateFormat('yyyy-MM-dd').format(now.subtract(const Duration(days: 30)));

    var thisMonthStart =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 1));
    var thisMonthEnd =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month + 1, 0));

    var lastMonthStart =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month - 1, 1));
    var lastMonthEnd =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year, now.month, 0));

    var thisYearStart =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year, 1, 1));
    var thisYearEnd =
        DateFormat('yyyy-MM-dd').format(DateTime(now.year + 1, 1, 0));

    if (value == "all") {
      _txtDateStart.text = '';
      _txtDateEnd.text = '';
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "all";
      });
    } else if (value == "today") {
      _txtDateStart.text = today;
      _txtDateEnd.text = today;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "today";
      });
    } else if (value == "yesterday") {
      _txtDateStart.text = yesterday;
      _txtDateEnd.text = yesterday;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "yesterday";
      });
    } else if (value == "this_month") {
      _txtDateStart.text = thisMonthStart;
      _txtDateEnd.text = thisMonthEnd;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "this_month";
      });
    } else if (value == "last_month") {
      _txtDateStart.text = lastMonthStart;
      _txtDateEnd.text = lastMonthEnd;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "last_month";
      });
    } else if (value == "last_30_days") {
      _txtDateStart.text = last30Day;
      _txtDateEnd.text = today;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "last_30_days";
      });
    } else if (value == "this_year") {
      _txtDateStart.text = thisYearStart;
      _txtDateEnd.text = thisYearEnd;
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
      setState(() {
        titleButton = "this_year";
      });
    } else if (value == 'custom_time') {
      setState(() {
        isDone = false;
      });
      await selectDate(setState);
      setState(() {
        titleButton = "custom_time";
        Future.delayed(Duration(seconds: 1)).then((value) {
          isDone = true;
        });
      });
    }
  }

  selectDate(StateSetter setState) async {
    DateTime? StartDate = await showDatePicker(
        helpText: 'Select Start date',
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2101));
    if (StartDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(StartDate);
      setState(() {
        _txtDateStart.text = formattedDate;
      });
    } else {
      print("Date is not selected");
    }
    DateTime? EndDate = await showDatePicker(
        helpText: 'Select End date',
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2101));
    if (EndDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(EndDate);
      setState(() {
        _txtDateEnd.text = formattedDate;
      });
      _txtDate.text = '${_txtDateStart.text} - ${_txtDateEnd.text}';
    } else {
      print("Date is not selected");
    }
  }

  bool isChecked = false;
  bool isFilter = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.green;
  }
}

class CustomPopupItem extends StatelessWidget {
  final String title;
  final String iconSvg;
  const CustomPopupItem({
    Key? key,
    required this.title,
    required this.iconSvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconSvg,
          height: 25,
          width: 25,
        ),
        const SizedBox(width: 5),
        Text(
          title,
        ),
      ],
    );
  }
}
