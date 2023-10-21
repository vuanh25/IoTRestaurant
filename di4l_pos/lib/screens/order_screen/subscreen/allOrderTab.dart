// ignore_for_file: file_names, prefer_typing_uninitialized_variables, camel_case_types, prefer_const_constructors, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'dart:async';

import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:after_layout/after_layout.dart';

import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';

import '../cubit/order_cubit.dart';

class allOrderTab extends StatefulWidget {
  allOrderTab(
      {Key? key,
      this.startDate,
      this.endDate,
      required this.searchText,
      required this.dateFillter,
      required this.isReturn,
      required this.isfilter})
      : super(key: key);
  TextEditingController searchText;
  bool isReturn;
  bool isfilter;
  String? startDate;
  String? endDate;

  ValueNotifier<List<DateTime?>>? dateFillter;

  // static MultiBlocProvider providers(TextEditingController searchText,
  //     bool isReturn, ValueNotifier<List<DateTime?>> dateFillter) {
  //   return
  //   MultiBlocProvider(
  //     providers: [
  //       // BlocProvider<SalesOrderCubit>(
  //       //   create: (_) => SalesOrderCubit(),
  //       // ),
  //     ],
  //     child:
  //     allOrderTab(
  //       searchText: searchText,
  //       dateFillter: dateFillter,
  //       isReturn: isReturn,
  //     ),
  //   );
  // }

  @override
  State<allOrderTab> createState() => _AllOrderTabState();
}

class _AllOrderTabState extends State<allOrderTab> with AfterLayoutMixin {
  ScrollController ctr = ScrollController();
  final _appPrefs = getIt<AppPref>();

  var user;
  @override
  void initState() {
    super.initState();
  }

  @override
  Future<FutureOr<void>> afterFirstLayout(BuildContext context) async {
    widget.isReturn
        ? context.read<SalesOrderCubit>().getSellReturn()
        : context.read<SalesOrderCubit>().getSell();
    user = await _appPrefs.getUser();
    widget.searchText.addListener(() {
      context
          .read<SalesOrderCubit>()
          .searchSell(searchText: widget.searchText.text);
    });
  }

  void setupScrollController(context) {
    ctr.addListener(() {
      if (ctr.position.atEdge) {
        if (ctr.position.pixels != 0) {
          if (!widget.isfilter) {
            BlocProvider.of<SalesOrderCubit>(context).getSell();
          } else {
            BlocProvider.of<SalesOrderCubit>(context).fillterSell(
                dateBegin: widget.startDate, dateEnd: widget.endDate);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    return ValueListenableBuilder(
        valueListenable: widget.dateFillter ?? ValueNotifier([DateTime.now()]),
        builder: (BuildContext context, dynamic value, Widget? child) {
          return Scaffold(
            floatingActionButton: ScrollingFabAnimatedCustom(
              width: 130,
              height: 48,
              text: 'create_order'.tr,
              iconData: Icons.person_add_alt_1,
              scrollController: ctr,
              onPress: () {
                navigator!.pushNamed(RouteGenerator.selectPorductForOrder);
              },
            ),
            body: Container(
              color: GlobalColors.kDarkWhite,
              child: BlocBuilder<SalesOrderCubit, SalesOrderState>(
                buildWhen: (previous, current) {
                    if(widget.isReturn) {
                      return previous.data!.returnStatus != current.data!.returnStatus;
                    }
                    else {
                      return previous.data!.status != current.data!.status;
                    }
                },
                builder: (context, state) {
                  List<SellData> _sells = [];
                  StatusType status;

                  if(widget.isReturn){
                    _sells = state.data?.returnSells ?? [];
                    status = state.data!.returnStatus;
                  } 
                  else{
                    _sells = state.data?.sells ?? [];
                    status = state.data!.status;
                  }

                  final page = state.data?.page;
                  if (status == StatusType.loading) {
                    return const AppLoadingWidget(
                      widget: null,
                      text: 'Loading...',
                    );
                  } else if (status == StatusType.loaded ||
                      status == StatusType.loadmore) {
                    return _sells.isNotEmpty
                        ? ListView.separated(
                            controller: ctr,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 10);
                            },
                            itemCount: _sells.length,
                            itemBuilder: (context, index) {
                              return index == _sells.length - 1
                                  ? Visibility(
                                      visible: status ==
                                              StatusType.loadmore
                                          ? true
                                          : false,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                            child: CircularProgressIndicator()),
                                      ))
                                  : _buildAllOrder(
                                      onPressed: (SellData? selldata) {
                                        navigator!.pushNamed(
                                            RouteGenerator.orderDetailScreen,
                                            arguments: {'SELLDATA': selldata});
                                      },
                                      sellData: _sells[index],
                                    );
                            })
                        : const NoDataWidget();
                  } else if (status == StatusType.error) {
                    return const Error404Widget();
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          );
        });
  }
}

class _buildAllOrder extends StatelessWidget {
  final SellData sellData;
  final Function(SellData?) onPressed;
  const _buildAllOrder({
    Key? key,
    required this.sellData,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => onPressed(sellData),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sellData.contact?.name ?? 'customer_name'.tr,
                        style: GlobalStyles.normalStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          color: sellData.paymentStatus!.contains("due")
                              ? Colors.amber.shade100
                              : (sellData.paymentStatus!.contains("unpaid")
                                  ? Colors.amber.shade100
                                  : Colors.green.shade100),
                          child: Text(
                            sellData.paymentStatus!.tr,
                            style: GlobalStyles.robotoRegular(context).copyWith(
                                fontSize: 14,
                                color: sellData.paymentStatus!.contains("due")
                                    ? Colors.deepOrange
                                    : (sellData.paymentStatus!
                                            .contains("unpaid")
                                        ? Colors.deepOrange
                                        : GlobalColors.kGreenTextColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: sellData.transactionDate ?? '',
                      style: GlobalStyles.robotoRegular(context).copyWith(
                        color: GlobalColors.kGreyTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' - ',
                          style: GlobalStyles.robotoRegular(context).copyWith(
                            color: GlobalColors.kGreyTextColor,
                          ),
                        ),
                        TextSpan(
                          text:
                              GlobalFormatter.formatString(sellData.invoiceNo),
                          style: GlobalStyles.robotoRegular(context).copyWith(
                            color: GlobalColors.kGreyTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.3,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'total_amount'.tr,
                        style: GlobalStyles.robotoRegular(context).copyWith(
                          fontSize: 18,
                          color: GlobalColors.kGreyTextColor,
                        ),
                      ),
                      Text(
                        GlobalFormatter.formatNumber(
                            source: sellData.packingCharge ?? ''),
                        style: GlobalStyles.normalStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  // Text(
                  //   sellData.paymentStatus ?? 'undefined'.tr,
                  //   style: GlobalStyles.robotoRegular(context).copyWith(
                  //     fontSize: 14,
                  //     color: sellData.paymentStatus != 'paid'
                  //         ? GlobalColors.errorColor
                  //         : GlobalColors.kGreenTextColor,
                  //   ),
                  // ),
                  const SizedBox(height: 5),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     InkWell(
                  //       child: Container(
                  //         alignment: Alignment.center,
                  //         height: 30,
                  //         width: size.width * 0.35,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(5),
                  //           border: Border.all(color: Colors.grey),
                  //         ),
                  //         child: Text(
                  //           'cancel'.tr,
                  //           style: GlobalStyles.normalStyle.copyWith(
                  //             fontSize: 14,
                  //             color: GlobalColors.kGreyTextColor,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     InkWell(
                  //       child: Container(
                  //         alignment: Alignment.center,
                  //         height: 30,
                  //         width: size.width * 0.35,
                  //         decoration: BoxDecoration(
                  //           color: GlobalColors.kGreenTextColor,
                  //           borderRadius: BorderRadius.circular(5),
                  //           border: Border.all(color: Colors.grey),
                  //         ),
                  //         child: Text(
                  //           'Delivered'.tr,
                  //           style: GlobalStyles.normalStyle.copyWith(
                  //             fontSize: 14,
                  //             color: GlobalColors.bgButton,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
