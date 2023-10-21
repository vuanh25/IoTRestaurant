import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_constants.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/link_type.dart';
import 'package:di4l_pos/enums/position.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/get_link_screen/get_link_screen.dart';
import 'package:di4l_pos/screens/get_link_screen/mobile/get_link_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../route_generator.dart';
import '../../../settings_screen/cubit/settings_cubit.dart';

class OptionProfile extends StatelessWidget {
  const OptionProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
          child: Column(
        children: [
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading: Icon(Icons.settings_outlined,
                  color: GlobalColors.primaryColor),
              title: Text(
                'Cài đặt ứng dụng',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading:
                  Icon(Icons.upload_file, color: GlobalColors.primaryColor),
              title: Text(
                'Đóng góp ý kiến',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading:
                  Icon(Icons.info_outline, color: GlobalColors.primaryColor),
              title: Text(
                'Về ứng dụng',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading:
                  Icon(Icons.shield_outlined, color: GlobalColors.primaryColor),
              title: Text(
                'Quy chế hoạt động',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading: Icon(Icons.lock_person_rounded,
                  color: GlobalColors.primaryColor),
              title: Text(
                'Chính sách bảo mật',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              minLeadingWidth: 5,
              leading: Icon(Icons.attribution_outlined,
                  color: GlobalColors.primaryColor),
              title: Text(
                'Giải quyết hiểu nại',
                style: GlobalStyles.robotoRegular(context),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
          ),
          // GetLinkMobileScreen.provider(position: Position.PROFILE),
          const GetLinkScreen(
            position: Position.PROFILE,
          ),
          BlocProvider(
            create: (BuildContext context) => BusinessCubit(),
            child: Builder(builder: (BuildContext context) {
              return InkWell(
                onTap: () => BlocProvider.of<BusinessCubit>(context)
                    .delete(int.parse(GlobalConstants.idBusiness.toString())),
                child: ListTile(
                  minLeadingWidth: 5,
                  leading: const Icon(Icons.delete_outline_outlined,
                      color: GlobalColors.hintMenuTextColor),
                  title: Text(
                    'Xoá tài khoản',
                    style: GlobalStyles.robotoRegular(context),
                  ),
                ),
              );
            }),
          ),
        ],
      )),
    );
  }
}
