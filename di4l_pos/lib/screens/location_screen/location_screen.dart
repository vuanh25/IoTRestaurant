import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/location_details.dart';
import 'package:flutter/material.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../business_screen/widget/card_list_business_custom_widget.dart';

class LocationSettingScreen extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: const LocationSettingScreen(),
    );
  }

  const LocationSettingScreen({Key? key}) : super(key: key);

  @override
  State<LocationSettingScreen> createState() => _LocationSettingScreenState();
}

class _LocationSettingScreenState extends State<LocationSettingScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  int _selectedItemIndex = -1;
  bool _isShowBusiness = false;
  bool _isGetBusinesssCalled = false;
  // String? _selectedItem;
  // List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(color: GlobalColors.bgButton),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "location_lst".tr,
                          style: GlobalStyles.titleHeader(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            navigator!.pushNamed(
                              RouteGenerator.addBusinessLocationScreen,
                            );
                          },
                          child: Text(
                            'add_location'.tr,
                          ),
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<BusinessCubit, BusinessState>(
                    builder: (context, state) {
                      if (!_isGetBusinesssCalled) {
                        context.read<BusinessCubit>()
                          ..getBusinesss()
                          ..getBusinessSettings();
                        // Call the getBusinesss() method
                        _isGetBusinesssCalled =
                            true; // Set the flag to true to indicate that it has been called
                      }
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 16),
                            if (state.data != null)
                              SingleChildScrollView(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics:
                                      const NeverScrollableScrollPhysics(), // Disable scrolling of the inner ListView
                                  itemCount: state.data!.businesss.length,
                                  itemBuilder: (context, index) {
                                    final business =
                                        state.data!.businesss[index];
                                    final defaultPayments = state
                                        .data!
                                        .businessSetting
                                        ?.locations?[index]
                                        .defaultPaymentAccounts;
                                    return InfoBusinessWidget(
                                      iconLeading: Icons.store,
                                      title: business.name.toString(),
                                      visible: index == _selectedItemIndex &&
                                          _isShowBusiness,
                                      onTap: () {
                                        setState(() {
                                          if (_selectedItemIndex == index) {
                                            _isShowBusiness =
                                                !_isShowBusiness; // Toggle visibility if the same item is tapped again
                                          } else {
                                            _selectedItemIndex = index;
                                            _isShowBusiness =
                                                true; // Show details for the newly tapped item
                                          }
                                        });
                                      },
                                      widget: LocationDetailsWidget.provider(
                                        businessLocation: business,
                                        defaultPaymentAccount: defaultPayments,
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'business_location_prefix'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: GlobalColors.primaryWebColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
