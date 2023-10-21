import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserPicker extends StatefulWidget {
  const UserPicker({
    Key? key,
    this.isCorrespondent = true,
  }) : super(key: key);
  final bool? isCorrespondent;
  static BlocProvider<UserCubit> provider({bool? isCorrespondent}) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: UserPicker(isCorrespondent: isCorrespondent,),
    );
  }

  @override
  State<UserPicker> createState() => _UserPickerState();
}

class _UserPickerState extends State<UserPicker> with AfterLayoutMixin {
  final scrollController = ScrollController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<UserCubit>().getUsers();
    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        context.read<UserCubit>().getUsers();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        final usersList = state.data!.users;
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
                widget.isCorrespondent == true ? 'correspondent'.tr : 'user'.tr,
                style: GlobalStyles.titleHeader(context),
              ),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    final user = usersList[index];
                    return ListTile(
                      title: Text(
                        user.fullName ?? '',
                        style: GlobalStyles.robotoRegular(context),
                      ),
                      onTap: () {
                        navigator!.pop(user);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: usersList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
