import 'dart:async';

import 'package:after_layout/after_layout.dart' as afterLayout;
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/onboard_screen/cubit/onboard_cubit.dart';
import 'package:di4l_pos/widgets/button_global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

class OnboardMobileScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<OnboardCubit> provider() {
    return BlocProvider(
      create: (context) => OnboardCubit(),
      child: OnboardMobileScreen(),
    );
  }

  const OnboardMobileScreen({Key? key}) : super(key: key);

  @override
  State<OnboardMobileScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardMobileScreen>
    with afterLayout.AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final PageController _pageController = PageController(initialPage: 0);

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<OnboardCubit>().getOnboards();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: _buildAppBar(),
      body: BlocListener<OnboardCubit, OnboardState>(
        listener: (context, state) {
          if (state is ChangeIndex) {
            this._pageController.nextPage(
                duration: const Duration(microseconds: 1000),
                curve: Curves.bounceInOut);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Page Views
              Container(
                width: Get.width,
                height: 500,
                child: BlocBuilder<OnboardCubit, OnboardState>(
                  builder: (context, state) {
                    final _onboards = state.data?.onboards ?? [];
                    return PageView.builder(
                      itemCount: _onboards.length,
                      controller: _pageController,
                      onPageChanged: (int index) {
                        _globalKey.currentContext!
                            .read<OnboardCubit>()
                            .updateIndex(index: index);
                      },
                      itemBuilder: (_, index) {
                        final _onboard = _onboards.elementAt(index);
                        return Column(
                          children: [
                            /// Icon
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                _onboard.icon ?? '',
                                fit: BoxFit.fill,
                                width: Get.width,
                                height: 340,
                              ),
                            ),

                            /// Title
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                _onboard.title ?? '',
                                style: GlobalStyles.boldStyle
                                    .copyWith(fontSize: 20),
                              ),
                            ),

                            /// Desctiption
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Container(
                                width: Get.width,
                                child: Text(
                                  _onboard.description ?? '',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),

              /// Dot Indicator
              BlocBuilder<OnboardCubit, OnboardState>(
                builder: (context, state) {
                  final _onboards = state.data?.onboards ?? [];
                  return DotIndicator(
                    currentDotSize: 15,
                    dotSize: 6,
                    pageController: _pageController,
                    pages: _onboards,
                    indicatorColor: GlobalColors.primaryColor,
                    unselectedIndicatorColor: Colors.grey,
                  );
                },
              ),

              /// Button Next
              ButtonGlobal(
                iconWidget: Icons.arrow_forward,
                buttontext: 'next'.tr,
                iconColor: Colors.white,
                buttonDecoration: GlobalStyles.kButtonDecoration
                    .copyWith(color: GlobalColors.primaryColor),
                onPressed: () {
                  _globalKey.currentContext!
                      .read<OnboardCubit>()
                      .handleNextPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Build App Bar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: [
        TextButton(
          onPressed: () {
            _globalKey.currentContext!.read<OnboardCubit>().handleSkipOnBoard();
          },
          child: Text(
            'skip'.tr,
            style: GlobalStyles.titleHeader(context),
          ),
        ),
        const SizedBox(width: 8.0),
      ],
    );
  }
}
