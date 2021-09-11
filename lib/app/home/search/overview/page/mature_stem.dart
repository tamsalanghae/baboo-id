import 'package:dalbergia_id/app/components/photo-picker/photo-picker.component.dart';
import 'package:dalbergia_id/app/home/search/search-page.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MatureStem extends GetView<SearchPageController> {
  final imageUrl = [
    "assets/images/Anh-phan-Tra-cuu/1. Than/1.1. Vo mau vang nhat.JPG",
    "assets/images/Anh-phan-Tra-cuu/1. Than/1.2. Vo xam.JPG",
    "assets/images/Anh-phan-Tra-cuu/1. Than/1.3..JPG",
  ];

  final data = [
    "Vỏ màu vàng nhạt, nứt dọc thân",
    "Vỏ xám",
    "Vỏ nứt từng mảnh màu nâu đậm",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              "Thân cây trưởng thành",
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 22),
            ),
          ),
          SizedBox(height: 2.h),
          Center(child: PhotoPickerComponent(imageUrl: imageUrl)),
          Padding(
            padding: EdgeInsets.all(3.w),
            child: Row(
              children: [
                VerticalDivider(color: Colors.black, endIndent: 3.w, indent: 3.w, width: 1),
                Expanded(
                  child: Column(
                    children: data
                        .map(
                          (e) => ListTile(
                            dense: true,
                            title: Text(e, style: Get.textTheme.bodyText1!.copyWith(fontSize: 18)),
                            trailing: Obx(
                              () => AnimatedSwitcher(
                                duration: Duration(milliseconds: 400),
                                child: Image.asset(
                                  controller.matureStemValue.value == e ? "assets/images/home/tick.png" : "assets/images/home/non-tick.png",
                                  key: ValueKey(e),
                                ),
                              ),
                            ),
                            onTap: () {
                              controller.matureStemValue.value.isEmpty || controller.matureStemValue.value != e
                                  ? controller.matureStemValue.value = e
                                  : controller.matureStemValue.value = "";
                              print("selected");
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
