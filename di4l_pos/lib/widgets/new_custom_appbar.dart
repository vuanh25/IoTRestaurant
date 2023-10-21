import 'package:di4l_pos/common/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  NewCustomAppBar(
      {Key? key,
      required this.img1,
      required this.img2,
      this.onPressed1,
      this.onPressed2})
      : super(key: key);
  final String img1;
  final String img2;
  final VoidCallback? onPressed1;
  final VoidCallback? onPressed2;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 25,
      backgroundColor: GlobalColors.appBar2,
      title: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://icdn.dantri.com.vn/thumb_w/680/2023/01/24/khoa-hocdocx-1674520013659.png")),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    const Text(
                      'firstname' + 'lastname',
                      style: TextStyle(fontSize: 18),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'shop_infomation'.tr,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              onPressed1;
            },
            icon: Image.network(img1)),
        IconButton(
            onPressed: () {
              onPressed2;
            },
            icon: Image.network(img2)),
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
