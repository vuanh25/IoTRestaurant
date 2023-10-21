// ignore: duplicate_ignore
// ignore_for_file: file_names
import 'dart:async';

import 'package:after_layout/after_layout.dart' as after_layout;
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/products_screen/cubit/products_cubit.dart';
import 'package:di4l_pos/screens/sellOnline_screen/widget/CustomFloatingButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/screens/sellOnline_screen/cubit/sellOnline_cubit.dart';
import 'package:di4l_pos/screens/sellOnline_screen/widget/GridCrad.dart';
import 'package:di4l_pos/screens/sellOnline_screen/widget/Productcard_container.dart';
import 'package:di4l_pos/screens/sellOnline_screen/widget/reviewshop_container.dart';
import 'package:di4l_pos/screens/sellOnline_screen/widget/todaybutton.dart';

class SellOnlneScreen extends StatefulWidget{

  static MultiBlocProvider providers() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SellOnlineCubit>(
            create: (BuildContext context) => SellOnlineCubit()),
        BlocProvider<ProductsCubit>(
            create: (BuildContext context) => ProductsCubit()),
      ],
      child: const SellOnlneScreen(),

    );
  }

  const SellOnlneScreen({Key? key}) : super(key: key);
  @override
  State<SellOnlneScreen> createState() => _SellOnlneScreenState();
}
class _SellOnlneScreenState extends State<SellOnlneScreen> with after_layout.AfterLayoutMixin{
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  // ignore: prefer_final_fields
  PageController _pageController = PageController(), 
    // ignore: prefer_final_fields
    _pageController1 = PageController(), 
    // ignore: prefer_final_fields
    _pageController2 = PageController(), 
    // ignore: prefer_final_fields
    _pageController3 = PageController();
  double currentPage = 0,currentPage1 = 0, currentPage2 = 0, currentPage3 = 0;
  ScrollController? ctr = ScrollController();
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    _pageController1.addListener(() {
      setState(() {
        currentPage1 = _pageController1.page!;
      });
    });
    _pageController2.addListener(() {
      setState(() {
        currentPage2 = _pageController2.page!;
      });
    });
    _pageController3.addListener(() {
      setState(() {
        currentPage3 = _pageController3.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    ctr?.dispose();
    super.dispose();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SellOnlineCubit>()
      ..getManageSellOnline()
      ..getReviewProduct()
      ..getSellMarket()
      ..getTodaynButton()
      ..getlistSliceshowTab1()
      ..getlistSliceshowTab3()
      ..getlistSliceshowTab2()
      ..getlistSliceshow();
    context.read<ProductsCubit>()
      .getProducts();
  }

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: globalKey,
        floatingActionButton: CustomFloatingButton(scrollController: ctr, title: 'add_product'.tr),
        body: SafeArea(
          child: SingleChildScrollView(
            controller: ctr,
            child: Center(
                child: Column(
                  children: <Widget>[
                    const ReviewContainer(),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: MediaQuery.of(context).size.height * 0.28,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Column(children: [
                        Row(children: [
                          Text("ReviewProduct".tr, style: GlobalStyles.titilliumSemiBold(context),),
                          const Spacer(),
                          TextButton(onPressed: () {
                            navigator!.pushNamed(RouteGenerator.productsScreen);
                          // ignore: prefer_interpolation_to_compose_strings
                          }, child: Text("manage".tr + " >", 
                            style: const TextStyle(
                              fontSize: 15,   
                              color: GlobalColors.flButtonColor)
                          ))
                        ],),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: buildlistReviewProduct(),
                        )
                      ],),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10,right: 10),
                      child: Column(children: [
                        Row(children: [
                          Text(
                            "today".tr,
                            style: GlobalStyles.titilliumSemiBold(context),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              navigator!.pushNamed(RouteGenerator.profitAndLossScreen);
                            },
                            child: Row(children: [
                              SvgPicture.asset(
                                GlobalImages.chart,
                                height: 20,
                                width: 20,
                                fit: BoxFit.fill,
                              ),
                              // ignore: prefer_interpolation_to_compose_strings
                              Text("review_report".tr + " >",
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: GlobalColors.flButtonColor)
                              ),
                            ],
                          )),
                        ],),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 10),
                          child: buildlistTodaynButton(),
                        ),
                      ],),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(children: [
                        Row(children: [
                          Text("manageSellOnline".tr, style:  GlobalStyles.titilliumSemiBold(context),)
                        ],),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          padding: const EdgeInsets.only(top: 5),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: buildManageSellOnline(),
                        )
                      ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(children: [
                        Row(children: [
                          Text("sellMarket".tr, style:  GlobalStyles.titilliumSemiBold(context),)
                        ],),
                        Container(
                          margin: const EdgeInsets.only(right: 5, left: 5, top: 15),
                          padding: const EdgeInsets.only(top: 5),
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: buildSellMarket(),
                        )
                      ]),
                    ),
                    buildSliceShow(),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 100),
                      child: Column(children: [
                        Row(children: [Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("forBegginer".tr, style:  GlobalStyles.titilliumSemiBold(context),),
                        )],),
                        SizedBox(
                          height: 48,
                          child: AppBar(    
                            backgroundColor: Colors.white,                     
                            bottom: TabBar(
                              isScrollable: true,
                              tabs: [
                                Tab(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    SvgPicture.asset(GlobalImages.facebook, height: 20, width: 20,),
                                    // ignore: prefer_interpolation_to_compose_strings
                                    Text(" " + "SBHSociety".tr, style: const TextStyle(color: Colors.black),)
                                  ],
                                ),),
                                Tab(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    SvgPicture.asset(GlobalImages.initiative, height: 20, width: 20,),
                                    // ignore: prefer_interpolation_to_compose_strings
                                    Text(" " + "initiative".tr, style: const TextStyle(color: Colors.black),)
                                  ],
                                ),),
                                Tab(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    SvgPicture.asset(GlobalImages.support2, height: 20, width: 20,),
                                    // ignore: prefer_interpolation_to_compose_strings
                                    Text(" " + "tutorial".tr, style: const TextStyle(color: Colors.black),)
                                  ],
                                ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: TabBarView(children: [
                            buildSliceShowTab1(),
                            buildSliceShowTab2(),
                            buildSliceShowTab3()
                          ]),
                        )
                      ],),
                    )
                  ]
                ),
              ),
            )
          ),
      ),
    );
  }

  BlocBuilder<ProductsCubit, ProductsState> buildlistReviewProduct() {
    return BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
      final menu = state.data?.products ?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return Productcard_Container(
            onTap:(){
              navigator!.pushNamed(RouteGenerator.detailProductScreen,arguments: {'PRODUCT_MODEL': menu.elementAt(index)});
            },
            title: menu.elementAt(index).name,
            image: menu.elementAt(index).imageUrl,
          );
        }
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildlistTodaynButton() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(builder: (context, state) {
      final menu = state.data?.listTodaynButton ?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10), 
        physics: const ClampingScrollPhysics(),
        itemCount: menu.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => SellOnlineTodayButton(
          onTap: (){
            globalKey.currentContext!.read<SellOnlineCubit>().handlePressedMenu(manageMenu: menu.elementAt(index));
          },
          title: menu.elementAt(index).title,
          img: menu.elementAt(index).icon1,
          color: menu.elementAt(index).icon2,
          info: menu.elementAt(index).info,
        )
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildManageSellOnline() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(
      builder: (context, state) {
      final menu = state.data?.listManageSellOnline?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ManageGridCard(
            onPressed:(){
              globalKey.currentContext!.read<SellOnlineCubit>().handlePressedMenu(manageMenu: menu.elementAt(index));
            },
            title: menu.elementAt(index).title,
            img: menu.elementAt(index).icon1,
          );
        }
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildSellMarket() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(
      builder: (context, state) {
      final menu = state.data?.listSellMarket?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ManageGridCard(
            onPressed:(){
              globalKey.currentContext!.read<SellOnlineCubit>().handlePressedMenu(manageMenu: menu.elementAt(index));
            },
            title: menu.elementAt(index).title,
            img: menu.elementAt(index).icon1,
          );
        }
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildSliceShow() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(builder: (context, state) {
      final menu = state.data?.listSliceshow ?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: GlobalColors.bgButton),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 1,
        child: PageView.builder(
          controller: _pageController,
          itemCount: menu.length,
          pageSnapping: true,
          itemBuilder: (context, pageIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  globalKey.currentContext!
                      .read<SellOnlineCubit>()
                      .handlePressedMenu(
                          manageMenu: menu.elementAt(pageIndex));
                },
                child: Image.asset(
                  menu.elementAt(pageIndex).icon1!,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.7,
                  fit: BoxFit.fill,
                )));
            }),
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildSliceShowTab1() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(builder: (context, state) {
      final menu = state.data?.listSliceshowTab1 ?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(color: GlobalColors.bgButton),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 1,
        child: PageView.builder(
          controller: _pageController1,
          itemCount: menu.length,
          pageSnapping: true,
          itemBuilder: (context, pageIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  globalKey.currentContext!
                      .read<SellOnlineCubit>()
                      .handlePressedMenu(
                          manageMenu: menu.elementAt(pageIndex));
                },
                child: Image.asset(
                  menu.elementAt(pageIndex).icon1!,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.7,
                  fit: BoxFit.fill,
                )));
            }),
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildSliceShowTab2() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(builder: (context, state) {
      final menu = state.data?.listSliceshowTab2?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(color: GlobalColors.bgButton),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 1,
        child: PageView.builder(
          controller: _pageController2,
          itemCount: menu.length,
          pageSnapping: true,
          itemBuilder: (context, pageIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  globalKey.currentContext!
                      .read<SellOnlineCubit>()
                      .handlePressedMenu(
                          manageMenu: menu.elementAt(pageIndex));
                },
                child: Image.asset(
                  menu.elementAt(pageIndex).icon1!,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.7,
                  fit: BoxFit.fill,
                )));
            }),
      );
    });
  }

  BlocBuilder<SellOnlineCubit, SellOnlineState> buildSliceShowTab3() {
    return BlocBuilder<SellOnlineCubit, SellOnlineState>(builder: (context, state) {
      final menu = state.data?.listSliceshowTab3 ?? [];
      if (menu.isEmpty) {
        return const SizedBox.shrink();
      }
      return Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(color: GlobalColors.bgButton),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 1,
        child: PageView.builder(
          controller: _pageController3,
          itemCount: menu.length,
          pageSnapping: true,
          itemBuilder: (context, pageIndex) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  globalKey.currentContext!
                      .read<SellOnlineCubit>()
                      .handlePressedMenu(
                          manageMenu: menu.elementAt(pageIndex));
                },
                child: Image.asset(
                  menu.elementAt(pageIndex).icon1!,
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.7,
                  fit: BoxFit.fill,
                ))
              );
            }
          ),
      );
    });
  }
}