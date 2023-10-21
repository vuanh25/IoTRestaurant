import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/global_colors.dart';
import '../../../widgets/custom_appbar.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

var _tabController;
@override
void initState() {
  initState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    var globalKey;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(
          backgroundColor: Colors.white,
          textColor: GlobalColors.getTextTitle(context),
          title: 'manage_products'.tr,
        ),
      ),
      key: globalKey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 40,
              width: Get.width,
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorColor: const Color.fromRGBO(63, 133, 91, 1),
                unselectedLabelColor: Colors.black54,
                labelColor: const Color.fromRGBO(63, 133, 91, 1),
                onTap: (index) {},
                tabs: [
                  Tab(
                    child: Center(
                        child: Text("products".tr,
                            style: const TextStyle(fontSize: 16))),
                  ),
                  Tab(
                    child: Center(
                        child: Text("category".tr,
                            style: const TextStyle(fontSize: 16))),
                  ),
                  Tab(
                    child: Center(
                      child: Text("variant".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child:
                          Text("unit".tr, style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("branch".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text("warranties".tr,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
