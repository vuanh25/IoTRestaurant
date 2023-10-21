import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/cubit/locations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class WardPicker extends StatefulWidget {
  const WardPicker({Key? key, this.parent}) : super(key: key);
  final int? parent;
  static BlocProvider<LocationsCubit> provider({int? parent}) {
    return BlocProvider(
      create: (context) => LocationsCubit(),
      child: WardPicker(
        parent: parent,
      ),
    );
  }

  @override
  State<WardPicker> createState() => _WardPickerState();
}

class _WardPickerState extends State<WardPicker> with AfterLayoutMixin {
  final scrollController = ScrollController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LocationsCubit>().getWards(parent: widget.parent);
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        context.read<LocationsCubit>().getWards(parent: widget.parent);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.parent != null
        ? BlocBuilder<LocationsCubit, LocationsState>(
            builder: (context, state) {
              final wardsList = state.data!.wards;
              return Container(
                height: MediaQuery.of(context).size.height * 0.8,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Choose ward',
                      style: GlobalStyles.titleHeader(context),
                    ),
                    Expanded(
                      child: ListView.separated(
                        controller: scrollController,
                        itemBuilder: (context, index) {
                          final ward = wardsList[index];
                          return ListTile(
                            title: Text(
                              ward.fullname ?? '',
                              style: GlobalStyles.robotoRegular(context),
                            ),
                            onTap: () {
                              navigator!.pop(ward);
                            },
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: wardsList.length,
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        : const Center(
            child: Text("You did not specify your district"),
          );
  }
}
