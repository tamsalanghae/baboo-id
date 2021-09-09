import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final data = [
  [
    "Tên khoa học: Dalbergia cochinchinensis Pierre",
    "Tên tiếng Việt: Trắc",
    "Tên tiếng Việt khác: Cẩm lai nam bộ, Trắc bông, Trắc đen, Trắc trắng, Giâu ca (Gia Rai), Ka Rắc (Ba Na), Ka-nhung (Khơ-me).",
    "Tên tiếng Anh: Rosewood, Siamese rosewood, Thailand rosewood, Tracwood.",
    "Tên tiếng nước ngoài khác: Payung (Thái Lan); Kranhung (Cam-pu-chia); Kha nhoung (Lào), Suan zhī mù (Trung Quốc).",
    "Chi: Trắc (Dalbergia)",
    "Họ: Đậu (Fabaceae)",
  ],
  [
    "Tên khoa học: Dalbergia oliveri Gamble ex Prain",
    "Tên tiếng Việt: Cẩm lai.",
    "Tên tiếng Việt khác: Cẩm, Cẩm lai bà rịa, Cẩm lai đồng nai, Cẩm lai bông, Cẩm lai mật, Cẩm lai vú, Trắc lai.",
    "Tên tiếng Anh: Vietnamese rosewood.",
    "Tên tiếng nước ngoài khác: Neang Nuon (Cam-pu-chia); Mai Ching Chan (Thái Lan); Kampee, Mai Kor phee, Pa dong daeng (Lào); Tamalan, Chingchan (Myanmar).",
    "Chi: Trắc (Dalbergia)",
    "Họ: Đậu (Fabaceae)",
  ]
];

class OverView extends StatelessWidget {
  final bool isFirstSpecies;

  const OverView({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            "Thông tin về phân loại thực vật.",
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
