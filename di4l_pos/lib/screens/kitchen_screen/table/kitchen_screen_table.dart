import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/screens/kitchen_screen/cubit/kitchen_cubit.dart';
import 'package:di4l_pos/screens/kitchen_screen/table/widgets/kitchen_item_table.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class KitchenScreenTable extends StatefulWidget {
  static MultiBlocProvider provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<KitchenCubit>(
          create: (BuildContext context) => KitchenCubit(),
        ),
      ],
      child: const KitchenScreenTable(),
    );
  }

  const KitchenScreenTable({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KitchenScreenTableState createState() => _KitchenScreenTableState();
}

class _KitchenScreenTableState extends State<KitchenScreenTable>
    with AfterLayoutMixin<KitchenScreenTable> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  TextEditingController textController = TextEditingController();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<KitchenCubit>().getKitchens();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 23),
        elevation: 0.5,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            'kitchen'.tr,
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
              width: MediaQuery.of(context).size.width,
              boxShadow: false,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
              // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
              onSubmitted: (String) {},
            ),
          ),
        ],
      ),
      body: BlocBuilder<KitchenCubit, KitchenState>(
        buildWhen: ((previous, current) =>
            previous.data!.status != current.data!.status),
        builder: (context, state) {
          final kitchens = state.data?.kitchens ?? [];
          switch (state.data!.status) {
            case StatusType.loading:
              return const AppLoadingWidget(
                widget: null,
                text: 'Loading...',
              );
            case StatusType.loaded:
              return kitchens.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 4 / 5,
                      ),
                      itemCount: kitchens.length,
                      itemBuilder: (context, index) {
                        return KitchenItemTable(
                          kitchenData: kitchens.elementAt(index),
                          function: () => _globalKey.currentContext!
                              .read<KitchenCubit>()
                              .markAsCooked(id: kitchens.elementAt(index).id!),
                        );
                      },
                    )
                  : const NoDataWidget();
            case StatusType.error:
              return const Error404Widget();
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
