import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/affiliate_marketing/response/affiliate_users_response.dart';
import 'package:di4l_pos/models/variants/response/variants_response.dart';
import 'package:di4l_pos/screens/affiliate_marketing_screen/cubit/affiliate_marketing_cubit.dart';
import 'package:di4l_pos/screens/variant_screen/sub_screen/cubit/add_variantion_cubit.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AddAffiliatePaymentScreen extends StatefulWidget {
  /// MARK: - Initials;
  AffiliateUser user;
  static MultiBlocProvider provider({required AffiliateUser user}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AffiliateMarketingCubit>(
          create: (context) => AffiliateMarketingCubit(),
        ),
      ],
      child: AddAffiliatePaymentScreen(user: user),
    );
  }

  AddAffiliatePaymentScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<AddAffiliatePaymentScreen> createState() => _AddAffiliatePaymentScreenState();
}

class _AddAffiliatePaymentScreenState extends State<AddAffiliatePaymentScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _txtAmount = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
  }

  @override
  void dispose() {
    _txtAmount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AffiliateMarketingCubit,AffiliateMarketingState>(
      builder: (context, state) {
        return AnimatedPadding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            duration: const Duration(milliseconds: 150),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              height: Get.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 0, vertical: Dimensions.PADDING_SIZE_SMALL),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              color: Colors.white,
                              height: 48.0,
                              alignment: Alignment.center,
                              child: Text(
                                'payment'.tr,
                                style: GlobalStyles.titilliumSemiBold(context),
                                textScaleFactor: 1.2,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(Icons.close_outlined),
                              ),
                            )
                          ],
                        ),
                    
                        if(state.data!.status != StatusType.loading)
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                          Dimensions.PADDING_SIZE_DEFAULT),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          /// Name
                                          CustomTextField(
                                            redLabel: '*',
                                            controller: _txtAmount,
                                            keyboardKey: TextInputType.number,
                                            hintLabel: 'affiliate_amount'.tr,
                                            validator: (value){
                                              if (value == null || value.isEmpty) {
                                                return 'required_amount'.tr;
                                              }
                                              else if(int.parse(value) <= 0){
                                                return 'amount_must_be_larger_than_0'.tr;
                                              }

                                              return null;
                                            },
                                          ),
                                          const SizedBox(height:Dimensions.PADDING_SIZE_DEFAULT),

                                          // BlocBuilder<AffiliateMarketingCubit,AffiliateMarketingState>(
                                          //     builder: (context, state) =>
                                          //         state.data!.error.isNotEmpty
                                          //             ? Text(
                                          //                 state.data!.error,
                                          //                 style: const TextStyle(color: Colors.red),
                                          //               )
                                          //             : const SizedBox()
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    if(state.data!.status != StatusType.loading)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: Get.width*0.85,
                              child: CustomButton(
                                type: ButtonType.BUTTON_TEXT,
                                color: GlobalColors.primaryColor,
                                label: "create".tr,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.FONT_SIZE_LARGE),
                                borderColor: GlobalColors.primaryColor,
                                onPressed: () async {
                                  if(_formKey.currentState!.validate()){
                                    FocusManager.instance.primaryFocus?.unfocus();
                                    context.read<AffiliateMarketingCubit>().createPayment(
                                      user: widget.user, 
                                      amount: _txtAmount.text
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                    else 
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: const AppLoadingWidget(
                        widget: null,
                        text: 'Loading...',
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
      }
    );
  }
}