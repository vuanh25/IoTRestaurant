import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BusinessLocationPicker extends StatefulWidget {
  const BusinessLocationPicker({Key? key}) : super(key: key);
  static BlocProvider<BusinessCubit> provider() {
    return BlocProvider(
      create: (context) => BusinessCubit(),
      child: const BusinessLocationPicker(),
    );
  }

  @override
  State<BusinessLocationPicker> createState() => _BusinessLocationPickerState();
}

class _BusinessLocationPickerState extends State<BusinessLocationPicker>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<BusinessCubit>().getBusinesss();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessCubit, BusinessState>(
      builder: (context, state) {
        final locationList = state.data!.businesss;
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
                'business_location'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final location = locationList[index];
                    return ListTile(
                      title: Text(
                        location.name ?? '',
                        style: GlobalStyles.robotoRegular(context),
                      ),
                      onTap: () {
                        navigator!.pop(location);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: locationList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
