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
    "Loài Trắc thường mọc rải rác hoặc thành quần thể nhỏ trong rừng hỗn giao cây lá rộng ẩm thường xanh và cây rụng lá họ Dầu (Dipterocarpaceae), trên đất thấp ở độ cao 50 – 600 m so với mặt nước biển, đôi khi đến 1000 m hoặc trong rừng cây lá rộng ẩm thường xanh, mưa mùa nhiệt đới trên đất thấp.",
    "Loài Trắc thường mọc ở nơi có độ dày tầng đất mặt trung bình, thành phần đất sét pha cát và đất có chứa đá vôi.",
    "Trắc sinh trưởng tương đối chậm. Ra hoa tháng 6 – 7, quả chín vào tháng 9 – 11. Cây có khả năng tái sinh chồi rất mạnh, nhưng tái sinh bằng hạt kém.",
    "Hình 3.2. Phân bố của loài Trắc dưới tán rừng thường xanh ở Rừng đặc dụng Đắk Uy, huyện Đắk Hà, tỉnh Kon Tum (Ảnh: Lã Quang Trung – CCD/2019).",
    "Hình 3.3. Phân bố của loài Trắc dưới tán rừng bán thường xanh cây họ Dầu ở VQG Yok Đôn, tỉnh Đắk Lắk (Ảnh: Đinh Thị Kim Vân – CCD/2020)."
  ],
  [
    "Cẩm lai mọc trong cả ba kiểu rừng: rừng cây gỗ hỗn giao tre-nứa; rừng bán rụng lá cây họ Dầu (Dipterocarpaceae) hoặc Bằng lăng (Lythraceae) mưa mùa nhiệt đới trên đất thấp ở độ cao 100 – 700 m, có khi tới 1200 m so với mặt nước biển; và trong rừng cây lá rộng, thường xanh, mưa mùa nhiệt đới trên đất thấp.",
    "Cẩm lai sinh trưởng trên nhiều loại đất khác nhau và sinh trưởng tốt nhất ở loại đất Bazan vàng đỏ hoặc đất bồi tụ tầng dày, nền đất tương đối bằng phẳng, độ dốc nhỏ, thường gặp ở những nơi ẩm và ven sông, suối.",
    "Cây ưa sáng, lúc nhỏ có thể chịu được che bóng. Cây sinh trưởng chậm và thường chiếm tầng cao của tán rừng (Hình 4.3). Khả năng tái sinh hạt và tái sinh chồi tốt. Ra hoa vào tháng 4 – 5, quả chín vào tháng 6 – 12.",
    "Hình 4.2. Phân bố của Cẩm lai ở khu vực ẩm, ven sông, suối. (Ảnh: Lã Quang Trung – CCD/2020).",
    "Hình 4.3. Cẩm lai chiếm tầng cao của tán rừng (Ảnh: Lã Quang Trung – CCD/2020).",
  ]
];

final imageUrl = [
  [
    "assets/images/Trac/Hinh 3.2.jpg",
    "assets/images/Trac/Hinh 3.3.jpg",
  ],
  [
    "assets/images/Cam-lai/Hinh 4.2.JPG",
    "assets/images/Cam-lai/Hinh 4.3.JPG",
  ],
];

class Feature extends StatelessWidget {
  final bool isFirstSpecies;

  const Feature({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              "Đặc điểm sinh học, sinh thái",
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
          Center(
            child: PhotoPickerComponent(
              imageUrl: isFirstSpecies ? imageUrl.first : imageUrl.last,
            ),
          ),
          SizedBox(height: 4.h),

        ],
      ),
    );
  }
}
