import 'dart:ui';

import 'package:dalbergia_id/themes/style.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final data = [
  [
    "Ở Việt Nam: Cẩm lai phân bố tại Quảng Trị (huyện Hướng Hóa), Đà Nẵng (quận Sơn Trà), Kon Tum (huyện Sa Thầy, Ngọc Hồi và Đắk Tô), Gia Lai (huyện Ia Grai, Krông Pa, Đức Cơ và Chư Prông), Đắk Lắk (huyện Ea Kar, Krông Năng và Lắk, Vườn quốc gia Yok Đôn), Đắk Nông (huyện Đắk Mil và Cư Jút), Lâm Đồng (Lang Biang, Lạc Dương và huyện Di Linh), Đồng Nai (Vườn quốc gia Cát Tiên và Khu bảo tồn Thiên nhiên – Văn hóa Đồng Nai), Phú Yên, Khánh Hòa, Ninh Thuận (huyện Thuận Nam và Ninh Sơn), Bình Thuận (rừng phòng hộ Hàm Thuận Bắc – Đa Mi của huyện Hàm Thuận Bắc), Bình Phước (huyện Bù Đăng và Bù Gia Mập), Tây Ninh và Bà Rịa – Vũng Tàu (huyện Tân Thành và Xuyên Mộc).",
    "Trên thế giới: Cẩm lai phân bố tại Myanmar, Thái Lan, Lào và Cam-pu-chia.",
  ],
  [
    "Tại Việt Nam: Trắc phân bố rải rác ở Đà Nẵng, Quảng Nam (huyện Hiên và Phước Sơn), Kon Tum (huyện Đắk Hà, Sa Thầy, Ngọc Hồi và Kon Plông), Gia Lai (huyện Krông Pa, Chư Păh, Ia Pa,  Ayun Pa, Mang Yang, Đắk Đoa, Ia Grai, K’Bang và Đức Cơ), Đắk Lắk (huyện Buôn Đôn, Ea Súp, Ea Kar, Krông Năng và Krông Pông), Đắk Nông (huyện Cư Jút), Lâm Đồng (huyện Cát Tiên, Bảo Lâm và Đạ Tẻh), Bình Thuận (Hàm Thuận Bắc), Đồng Nai (Định Quán, Vĩnh Cửu, Tân Phú, Trảng Bom và Thống Nhất), Tây Ninh (huyện Tân Biên), và Kiên Giang (huyện Phú Quốc)",
    "Trên thế giới, Trắc phân bố ở Thái Lan, Lào và Cam-pu-chia.",
  ]
];

class Distribution extends StatelessWidget {
  final bool isFirstSpecies;

  const Distribution({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              "Phân bố",
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2.h),
          ExpandableNotifier(
            child: ScrollOnExpand(
              child: ExpandablePanel(
                theme: ExpandableThemeData(
                  iconColor: Color(0xFF707070),
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                  fadeCurve: Curves.easeInOutSine,
                ),
                collapsed: Center(
                  child: Text(
                    ". . .",
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                header: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 1.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Icon(Icons.stop, size: 10, color: AppColor.accentColor),
                            width: 5.w,
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 6),
                          ),
                          Expanded(
                            child: Text(
                              (isFirstSpecies ? data.first : data.last).first,
                              style: Get.textTheme.bodyText1!.copyWith(fontSize: 16),
                              maxLines: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                expanded: Column(
                  children: [
                    ...(isFirstSpecies ? data.first : data.last).map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(vertical: 1.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(Icons.stop, size: 10, color: AppColor.accentColor),
                              width: 5.w,
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 6),
                            ),
                            Expanded(
                              child: Text(
                                e,
                                style: Get.textTheme.bodyText1!.copyWith(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Image.asset(
            isFirstSpecies ? "assets/images/Trac/Hinh 3.1.png" : "assets/images/Cam-lai/Hinh 4.1.jpg",
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
