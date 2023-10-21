import 'package:di4l_pos/common/global_images.dart';
import 'package:flutter/material.dart';

class EmptyExpenseWidget extends StatelessWidget {
  const EmptyExpenseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            GlobalImages.note,
            width: MediaQuery.of(context).size.width / 1.5,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 10),
            child: Text(
              'Hiện chưa có khoản thu chi nào',
              style: TextStyle(color: Color(0xff808183)),
            ),
          ),
        ],
      ),
    );
  }
}
