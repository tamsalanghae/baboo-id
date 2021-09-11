import 'package:dalbergia_id/app/components/appbar/appbar.component.dart';
import 'package:dalbergia_id/app/components/common-button/common-button.component.dart';
import 'package:dalbergia_id/app/home/search/overview/overview.view.dart';
import 'package:dalbergia_id/app/home/search/search-page.controller.dart';
import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SearchPageView extends GetView<SearchPageController> {
  final List<String> data = [
    "Thân cây trưởng thành",
    "Lá",
    "Hoa",
    "Quả",
    "Cây tái sinh",
    "Gỗ",
  ];

  @override
  Widget build(BuildContext context) {
    Get.put(SearchPageController());
    return Scaffold(
      appBar: staticAppbar(onFirstPage: true),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(3.w),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 4.h),
          child: Column(
            children: [
              ...data.asMap().entries.map(buildSectionSearch),
              SizedBox(height: 2.h),
              CommonButton(
                child: Text(
                  "Xem kết quả",
                  style: Get.textTheme.bodyText1!.copyWith(color: AppColor.white, fontSize: 18),
                ),
                width: 35.w,
                height: 30,
                backgroundColor: Color(0xFF707070),
                onPressed: () {
                  print("Check result");
                },
              ),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionSearch(MapEntry<int, String> e) => Container(
        margin: EdgeInsets.all(2.w),
        width: 77.w + 12,
        height: 80,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => Get.to(() => OverviewScreenSearch(e.key)),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFCAE8D8),
                  borderRadius: BorderRadius.circular(11.sp),
                ),
                width: 77.w,
                height: 70,
                alignment: Alignment.center,
                child: ListTile(
                  leading: Image.asset("assets/images/home/tree.png", height: 36),
                  title: Text(
                    e.value,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 18),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Container(
                    width: 18,
                    height: 18,
                    alignment: Alignment.center,
                    child: Text(
                      "${e.key + 1}",
                      style: Get.textTheme.bodyText1,
                    ),
                    color: Color(0xFFAFAFAF),
                  ),
                ),
              ),
            )
          ],
        ),
      );
}

