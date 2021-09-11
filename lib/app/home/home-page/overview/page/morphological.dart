import 'dart:ui';

import 'package:dalbergia_id/app/components/photo-picker/photo-picker.component.dart';
import 'package:dalbergia_id/themes/style.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final data = [
  [
    [
      "Cây gỗ lớn có thể cao tới 30 m, đường kính thân đạt khoảng 60 – 120 cm, thường có nhiều thân và phân cành mạnh.",
      "Vỏ cây màu nâu vàng nhạt, nứt dọc thân và bong từng mảng.",
      "Lá kép lông chim một lần lẻ, dài 15 – 20 cm, cuống lá dài 2,5 – 5 cm, phần mang lá chét dài 6,5 – 15 cm, nhẵn.",
      "Lá chét 7 – 9, mọc gần như đối. Phiến lá hình ovan tới hình trứng, dài 3,5 – 8(–10) cm, rộng 2 – 4 (–5) cm, lá dai, nhẵn, mặt trên xanh đậm, mặt dưới mốc trắng, đầu lá nhọn, gốc lá đột ngột tù hoặc gần tròn; gân bên 7 – 9 đôi, nổi rõ cả hai mặt, gân thứ cấp hình mạng lưới nổi rõ ở mặt dưới; cuống lá chét dài 2 – 5 mm. Lá kèm sớm rụng.",
      "Cụm hoa chùm, tụ tán ở đầu cành, dài 7 – 15 (–20) cm; lá bắc sớm rụng; cuống hoa dài 1 mm. Hoa màu trắng tới trắng đục, dài 5,5 – 6 mm, có hương thơm.",
      "Quả đậu, hình bầu dục thuôn, dài 4,5 – 7,5 (– 8 cm), rộng 0,8 – 1,2 cm, mỏng, nhẵn, có các khoang chứa 1 – 2 hạt; vách quả mỏng, nhẵn; đài không rụng nằm ở gốc của cuống quả.",
      "Hạt hình thận, kích thước 4 x 6 mm, nằm ở trung tâm quả, màu nâu hoặc đỏ thẫm.",
    ],
    [
      "Cây gỗ cao 15 – 30 m. Đường kính thân cây từ 60 – 90 cm. Cây phân cành nhiều. Cành non chắc, khỏe, có lông tơ mỏng.",
      "Vỏ cây màu xám hay xám trắng, có bì khổng nổi rõ, khi già bong thành từng mảng màu nâu đậm.",
      "Lá kép lông chim một lần lẻ, dài 15 – 25 cm, cuống dài 3 – 5 cm và phần mang lá chét dài 10 –18 cm, nhẵn.",
      "Lá chét (9 –) 10 –15 (17), mọc cách, mềm và giòn tới hơi dai, hình bầu dục thuôn tới mũi mác, dài 4 – 8 cm, rộng 1,5 – 3 cm, nhẵn, chóp nhọn hoặc tù, thường có mũi nhọn, tròn ở gốc, gân bên 9-12 đôi và gân thứ cấp hình mạng lưới nổi rõ ở cả hai mặt; cuống lá chét dài 3 – 4 mm. Lá non màu xanh nhạt hoặc hồng nhạt, có lông thưa hoặc không lông, lá già màu xanh thẫm hoặc hơi xám, nhẵn.",
      "Cụm hoa chùm ở đầu cành, dài 10 – 15 cm. Lá bắc sớm rụng. Cuống hoa dài 1,5 mm, có lông thưa.",
      "Hoa màu cà sáng, tím bên trong, dài 12 mm; ống đài dài 4 – 5 mm, nhẵn hoặc có lông thưa ở gốc.",
      "Quả dạng đậu, hình mác hoặc hình bầu dục thuôn, dài 9 – 14 cm, rộng 2,4 – 4 cm, nhẵn, đôi khi dai, màu nâu sáng, cuống quả dài 1 – 1,5 cm. Quả mỏng, phẳng, phình lên ở hạt thành hình chóp nhọn.",
      "Hạt thường có 1 – 2 (ít khi 3), hình cầu hoặc thận, kích thước 12,5 x 9 mm, màu nâu hoặc đỏ đậm.",
    ]
  ],
  [
    [
      "Trắc tái sinh hạt kém nhưng tái sinh chồi mạnh từ gốc hoặc rễ cây mẹ (Hình 3.8 và Hình 3.9). Cây khi nhỏ có lá kép lông chim một lần lẻ, dài 15 – 20 cm, không lông. Lá chét 5 – 9, mọc gần như đối, lá đa dạng từ hình ovan đến hình trứng gần tròn, kích thước 4 – 7 cm x 3,5 – 6 cm, mặt trên lá màu xanh nhạt tới xanh thẫm, mặt dưới lá màu hơi mốc; chóp lá hơi nhọn hoặc tròn, gốc lá tù tới hơi nhọn; gân chính và gân bên nổi rõ ở cả hai mặt.",
      "Lưu ý: Cây Trắc tái sinh dễ bị nhầm lẫn với cây Giáng hương quả to (Pterocarpus macrocarpus) tái sinh. Để nhận biết, cần chú ý sự xuất hiện của cây mẹ hai loài và đặc điểm mặt dưới lá cây Giáng hương quả to tái sinh có lông.",
    ],
    [
      "Cẩm lai tái sinh bằng hạt và bằng chồi khá mạnh. Cây non tái sinh thường có lá chét màu đỏ đun, đỏ cam, vàng cam hoặc hồng nhạt.",
      "Cây tái sinh có hình thái lá tương tự cây trưởng thành. Lá hình trứng ngược hoặc bầu dục, kích thước 1 – 1,2 cm x 2 – 2,5 cm, màu xanh nhạt ở cây mới nảy mầm; hình bầu dục thuôn, kích thước 1,5 x 3 cm ở giai đoạn già hơn hoặc ở cây tái sinh chồi; cuống lá chét dài 2 – 3 mm. Gân lá nổi rõ ở cả hai mặt.",
      "Cây Cẩm lai ở giai đoạn nhỏ ưa sáng nhưng có thể chịu bóng một phần."
    ]
  ],
];

final imageUrl = [
  [
    [
      "assets/images/Trac/Hinh 3.4.JPG",
      "assets/images/Trac/Hinh 3.5.jpg",
      "assets/images/Trac/Hinh 3.6.JPG",
      "assets/images/Trac/Hinh 3.7.JPG",
    ],
    [
      "assets/images/Cam-lai/Hinh 4.4.JPG",
      "assets/images/Cam-lai/Hinh 4.5.JPG",
      "assets/images/Cam-lai/Hinh 4.6.JPG",
      "assets/images/Cam-lai/Hinh 4.7.JPG",
      "assets/images/Cam-lai/Hinh 4.8.jpg",
    ],
  ],
  [
    [
      "assets/images/Trac/Hinh 3.8.JPG",
      "assets/images/Trac/Hinh 3.9.jpg",
      "assets/images/Trac/Hinh 3.10.jpg",
      "assets/images/Trac/Hinh 3.11.JPG",
    ],
    [
      "assets/images/Cam-lai/Hinh 4.9.JPG",
      "assets/images/Cam-lai/Hinh 4.10.JPG",
      "assets/images/Cam-lai/Hinh 4.11.JPG",
    ],
  ],
];

class Morphological extends StatelessWidget {
  final bool isFirstSpecies;

  const Morphological({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              "Đặc điểm hình thái",
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2.h),
          ...["Đặc điểm về hình thái thực vật", "Đặc điểm cây tái sinh"].asMap().entries.map(
                (e) => buildExpandWidget(
                  e.key,
                  title: e.value,
                  data: data[e.key],
                ),
              ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }

  Widget buildExpandWidget(int index, {required String title, required List<List<String>> data}) => ExpandableNotifier(
        child: ScrollOnExpand(
          child: ExpandablePanel(
            theme: ExpandableThemeData(
              iconColor: Color(0xFF707070),
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
              fadeCurve: Curves.easeInOutSine,
            ),
            collapsed: SizedBox(),
            header: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(180),
                        child: Container(
                          width: 18,
                          height: 18,
                          color: AppColor.accentColor,
                          alignment: Alignment.center,
                          child: Text(
                            "${index + 1}",
                            style: Get.textTheme.bodyText1!.copyWith(color: AppColor.white, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Text(
                          title,
                          style: Get.textTheme.bodyText1!.copyWith(fontSize: 16, color: AppColor.accentColor),
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
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: PhotoPickerComponent(
                      imageUrl: isFirstSpecies ? imageUrl[index].first : imageUrl[index].last,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
