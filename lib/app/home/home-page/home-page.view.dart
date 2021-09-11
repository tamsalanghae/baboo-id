import 'package:dalbergia_id/app/components/appbar/appbar.component.dart';
import 'package:dalbergia_id/app/components/common-button/common-button.component.dart';
import 'package:dalbergia_id/app/home/home-page/home-page.controller.dart';
import 'package:dalbergia_id/app/home/home-page/overview/overview.view.dart';
import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomePageView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(onFirstPage: true),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Nhận dạng",
                style: Get.textTheme.bodyText1!.copyWith(color: AppColor.accentColor, fontSize: 25),
              ),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () => Get.to(() => OverviewScreen(isFirstSpecies: true)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/Trac/1. Trac.JPG", height: 70.w, width: 80.w, fit: BoxFit.cover),
                      CommonButton(
                        width: 35.w,
                        height: 30,
                        backgroundColor: AppColor.white,
                        child: Text(
                          "Loài trắc",
                          style: Get.textTheme.bodyText1!.copyWith(color: AppColor.accentColor, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () => Get.to(() => OverviewScreen(isFirstSpecies: false)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/Cam-lai/2. Cam lai.JPG", height: 70.w, width: 80.w, fit: BoxFit.cover),
                      CommonButton(
                        width: 35.w,
                        height:  30,
                        backgroundColor: AppColor.white,
                        child: Text(
                          "Loài Cẩm lai",
                          style: Get.textTheme.bodyText1!.copyWith(color: AppColor.accentColor, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
