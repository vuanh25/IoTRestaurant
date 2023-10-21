import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/add_business_location_screen/cubit/locations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ProvincePicker extends StatefulWidget {
  const ProvincePicker({Key? key}) : super(key: key);

  static BlocProvider<LocationsCubit> provider() {
    return BlocProvider(
      create: (context) => LocationsCubit(),
      child: const ProvincePicker(),
    );
  }

  @override
  State<ProvincePicker> createState() => _ProvincePickerState();
}

class _ProvincePickerState extends State<ProvincePicker> with AfterLayoutMixin {
  final scrollController = ScrollController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<LocationsCubit>().getProvinces();
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        context.read<LocationsCubit>().getProvinces();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsCubit, LocationsState>(
      builder: (context, state) {
        final provinceList = state.data!.provinces;
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
                'Choose province',
                style: GlobalStyles.titleHeader(context),
              ),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    final province = provinceList[index];
                    return ListTile(
                      title: Text(
                        province.fullname ?? '',
                        style: GlobalStyles.robotoRegular(context),
                      ),
                      onTap: () {
                        navigator!.pop(province);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: provinceList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
