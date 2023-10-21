import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/link_type.dart';
import 'package:di4l_pos/enums/position.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/screens/get_link_screen/cubit/get_link_cubit.dart';
import 'package:di4l_pos/screens/get_link_screen/widget/link_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/utils.dart';

class GetLinkMobileScreen extends StatefulWidget {
  final Position? position;
  static BlocProvider<GetLinkCubit> provider({Position? position}) {
    return BlocProvider(
      create: (context) => GetLinkCubit(),
      child: GetLinkMobileScreen(
        position: position,
      ),
    );
  }

  const GetLinkMobileScreen({Key? key, this.position}) : super(key: key);

  @override
  State<GetLinkMobileScreen> createState() => _GetLinkMobileScreenState();
}

class _GetLinkMobileScreenState extends State<GetLinkMobileScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<GetLinkCubit>().getLinks();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLinkCubit, GetLinkState>(
      builder: (context, state) {
        final links = state.data?.links ?? [];
        final List<Link> linkProfiles = [];
        final List<Link> linkFunctions = [];
        final List<Link> linkSystems = [];

        for (var link in links) {
          if (link.position == 'Profile Screen') {
            linkProfiles.add(link);
          } else if (link.position == 'Function Screen') {
            linkFunctions.add(link);
          } else {
            linkSystems.add(link);
          }
        }
        return widget.position == Position.FUNCTION
            ? Scaffold(
                backgroundColor: GlobalColors.bgColor,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  title: Text('Link'.tr,
                      style: GlobalStyles.titilliumRegular(context).copyWith(
                        fontSize: 16,
                      )),
                  automaticallyImplyLeading: true,
                  elevation: 0,
                  centerTitle: true,
                ),
                body: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white,
                  child: ListView.separated(
                    itemCount: widget.position == Position.PROFILE
                        ? linkProfiles.length
                        : (widget.position == Position.FUNCTION
                            ? linkFunctions.length
                            : linkSystems.length),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => LinkWidget(
                      link: widget.position == Position.PROFILE
                          ? linkProfiles.elementAt(index)
                          : (widget.position == Position.FUNCTION
                              ? linkFunctions.elementAt(index)
                              : linkSystems.elementAt(index)),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox.shrink(),
                  ),
                ),
              )
            : ListView.separated(
                itemCount: widget.position == Position.PROFILE
                    ? linkProfiles.length
                    : (widget.position == Position.FUNCTION
                        ? linkFunctions.length
                        : linkSystems.length),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => LinkWidget(
                  link: widget.position == Position.PROFILE
                      ? linkProfiles.elementAt(index)
                      : (widget.position == Position.FUNCTION
                          ? linkFunctions.elementAt(index)
                          : linkSystems.elementAt(index)),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox.shrink(),
              );
      },
    );
  }
}
