import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/profile_screen/cubit/profile_cubit.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: Get.height * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    child: CachedNetworkImage(
                      imageUrl: state.data!.profile?.media?.displayUrl ?? '',
                      errorWidget: (context, url, error) => ErrorWidgetImage(),
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: -20,
                  child: IconButton(
                    onPressed: () async {
                      await BlocProvider.of<ProfileCubit>(context)
                          .selectImage(ImageSource.gallery);
                      await BlocProvider.of<ProfileCubit>(context)
                          .updateAvatar();
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.data!.profile?.getFullName() ?? 'Loading ...',
                  style: GlobalStyles.titleHeader(context)
                      .copyWith(color: Colors.black),
                ),
                InkWell(
                  onTap: () => navigator!.pushNamed(
                    RouteGenerator.updateProfile,
                    arguments: {'PROFILE': state.data!.profile},
                  ),
                  child: Text(
                    'Chỉnh sửa thông tin',
                    style: GlobalStyles.titleHeader(context)
                        .copyWith(color: GlobalColors.primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
