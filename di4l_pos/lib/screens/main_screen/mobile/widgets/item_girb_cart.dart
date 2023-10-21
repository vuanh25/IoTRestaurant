import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/get_link/response/get_link_response.dart';
import 'package:di4l_pos/models/home/item_main.dart';
import 'package:di4l_pos/screens/get_link_screen/cubit/get_link_cubit.dart';
import 'package:di4l_pos/screens/get_link_screen/widget/webapp_widget.dart';
import 'package:di4l_pos/widgets/webview_with_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemGridCard extends StatelessWidget {
  /// MARK: - Initials;
  ///
  final Item? item;
  final Link? link;
  final dynamic menu;

  // final Function(HomeMenu?)? onPressed;

  const ItemGridCard({
    Key? key,
    this.item,
    this.link,
    this.menu,
  }) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (menu is Link) {
          if (menu?.type == 'HTTP LINK') {
            _launchInBrowser(Uri.parse('${menu?.refer}'));
          } else if (menu?.type == 'WebView') {
            // launchUrl(Uri.parse('${menu?.refer}'));
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WebViewWithAppBar(
                      title: menu!.name!,
                      url: '${menu?.refer}',
                    )));
          } else {
            context
                .read<GetLinkCubit>()
                .intoLink(link: '${menu?.refer}')
                .then((value) => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WebAppWidget(
                          title: menu!.name!,
                          htmlData: value,
                        ))));
          }
        } else {
          navigator!.pushNamed(menu!.route!);
        }
      },
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            menu is Item
                ? SvgPicture.asset(
                    menu?.iconlink ?? '',
                    width: 45,
                    height: 45,
                  )
                : const Icon(
                    Icons.insert_link_sharp,
                    color: GlobalColors.primaryColor,
                    size: 45,
                  ),
            Padding(
              padding: const EdgeInsets.all(
                  Dimensions.PADDING_SIZE_EXTRA_EXTRA_SMALL),
              child: Text(
                (menu is Item ? menu?.title.toString() : menu?.name.toString())!
                    .tr,
                style: GlobalStyles.robotoRegular(context),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
