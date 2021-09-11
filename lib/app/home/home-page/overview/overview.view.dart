import 'package:dalbergia_id/app/components/appbar/appbar.component.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/distribution.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/features.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/overview.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/value.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/wood.dart';
import 'package:dalbergia_id/app/home/home-page/overview/page/morphological.dart';
import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Value;
import 'package:sizer/sizer.dart';

class OverviewScreen extends GetView {
  final bool isFirstSpecies;

  OverviewScreen({required this.isFirstSpecies});

  final PageController _controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(),
      body: Container(
        margin: EdgeInsets.fromLTRB(5.w, 4.h, 5.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                isFirstSpecies ? "Loài Trắc" : "Loài Cẩm Lai",
                style: Get.textTheme.bodyText1!.copyWith(color: AppColor.accentColor, fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2.h),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  OverView(isFirstSpecies: isFirstSpecies),
                  Distribution(isFirstSpecies: isFirstSpecies),
                  Feature(isFirstSpecies: isFirstSpecies),
                  Value(isFirstSpecies: isFirstSpecies),
                  Morphological(isFirstSpecies: isFirstSpecies),
                  Wood(isFirstSpecies: isFirstSpecies),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.offAllNamed("/home"),
        backgroundColor: Color(0xFFCAE8D8),
        elevation: 2,
        child: Icon(Icons.home_outlined, color: AppColor.accentColor, size: 36),
      ),
    );
  }
}
