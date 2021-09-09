import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final data = [
  [
    "Gỗ Trắc thuộc gỗ Nhóm gỗ quý, hiếm, đặc biệt. Gỗ có vân đẹp, mịn, rất cứng và nặng, bền, hương thơm đặc biệt, phần gỗ lõi không bị mối mọt, gỗ dác dễ bị mục và mối mọt, rất được ưa chuộng làm đồ mộc cao cấp, mộc mỹ nghệ, đồ tiện, nhạc cụ và đồ dùng gia đình.",
    "Sách đỏ Việt Nam: Nguy cấp (EN)",
    "Danh lục đỏ IUCN: Sắp nguy cấp (Vulnerable – VU)",
    "CITES: Phụ lục II",
    "Nghị định 06/2019/NĐ-CP: Nhóm IIA",
  ],
  [
    "Gỗ Cẩm lai thuộc Nhóm gỗ quý, hiếm, đặc biệt. Gỗ cứng và nặng, rất bền, đẹp, mịn, ít bị nứt, không bị mối mọt, hương thơm đặc biệt, rất được ưa chuộng để sản xuất đồ mộc cao cấp, mộc mỹ nghệ, đồ tiện, nhạc cụ, trang trí nội thất, và đồ dùng gia đình. Cả gỗ dác cũng như gỗ lõi đều được sử dụng.",
    "Sách đỏ Việt Nam: Nguy cấp (EN)",
    "Danh lục đỏ IUCN: Nguy cấp (Endangered – EN)",
    "CITES: Phụ lục II",
    "Nghị định 06/2019/NĐ-CP: Nhóm IIA",
  ]
];

class Value extends StatelessWidget {
  final bool isFirstSpecies;

  const Value({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            "Giá trị sử dụng và bảo tồn",
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 2.h),
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
    );
  }
}
