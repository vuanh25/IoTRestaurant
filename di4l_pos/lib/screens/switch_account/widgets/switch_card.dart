import 'package:cached_network_image/cached_network_image.dart';
import 'package:di4l_pos/models/user/response/account_response.dart';
import 'package:di4l_pos/widgets/error_image_widget.dart';
import 'package:flutter/material.dart';

class SwitchAccountCard extends StatelessWidget {
  final Account account;
  final Function() onPressed;
  const SwitchAccountCard({
    Key? key,
    required this.account,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 92,
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        padding: const EdgeInsets.only(left: 18, right: 18),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff262626)),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: CachedNetworkImage(
                  imageUrl: account.bLogo(),
                  errorWidget: (context, url, error) => const ErrorWidgetImage(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              account.businessName ?? 'Contact',
                              style: const TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '${account.firstName} ${account.lastName}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Icon(
                Icons.arrow_circle_right_outlined,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
