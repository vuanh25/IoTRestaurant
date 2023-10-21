import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';

class ErrorWidgetImage extends StatelessWidget {
  const ErrorWidgetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      // image: AssetImage(GlobalImages.placeholderImage),
      image: AssetImage('assets/icons/pos_logo.png'),
      fit: BoxFit.cover,
    );
  }
}
