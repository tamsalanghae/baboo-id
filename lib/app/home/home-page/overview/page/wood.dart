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
      "Gỗ dác của Trắc kém bền nên thường được đẽo bỏ. Gỗ tròn kích thước nhỏ, đôi khi vẫn còn dính ít gỗ dác màu sáng tạo thành những mảng loang, đốm như da báo.",
      "Cây gỗ Trắc thường có hiện tượng rỗng ruột, nhất là những cây kích thước lớn.",
      "Gỗ rất nặng và cứng, khối lượng riêng 1.035 kg/m3.Gỗ dác và gỗ lõi phân biệt về màu sắc. Gỗ dác có màu xám trắng, xám vàng nhạt. Gỗ lõi thường có màu nâu hồng, đỏ vàng hoặc nâu đen. Gỗ đã khai thác để lâu ngày, lõi thường chuyển sang màu nâu đỏ, nâu đen hoặc đen.",
    ],
    [
      "Gỗ dác và gỗ lõi phân biệt về màu sắc. Gỗ dác thường có màu xám vàng nhạt đến xám trắng. Gỗ lõi có màu nâu hồng, nâu tím, nâu vàng. Gỗ lõi để lâu ngày thường chuyển dần sang màu nâu thẫm.",
      "Đối với loại gỗ Cẩm lai, gỗ dác có độ bền tự nhiên khá tốt nên phần gỗ dác cũng được sử dụng.",
      "Cây gỗ Cẩm lai ít có hiện tượng rỗng ruột hơn cây gỗ Trắc.",
      "Gỗ Cẩm lai nặng và cứng, tuy nhiên nhẹ hơn gỗ Trắc, khối lượng riêng trung bình 940 kg/m3.",
    ],
  ],
  [
    [
      "Gỗ mới xẻ thường có mùi hơi chua. Trên mặt xẻ xuyên tâm thấy có những sọc dọc màu nâu đến đen, chúng tạo ra trên mặt xẻ tiếp tuyến thành vân gỗ rất đẹp",
      "Do gỗ Trắc quý và có giá trị cao nên được tận thu, vì thế gỗ xẻ, gỗ đẽo khá đa dạng về hình dạng và kích thước."
    ],
    [
      "Gỗ mới xẻ không có mùi chua như mùi gỗ Trắc mà có mùi hăng.",
      "Trên mặt xẻ xuyên tâm thường có những sọc dọc màu nâu đến đen. Những sọc màu này thường tạo ra vân rất đẹp trên mặt tiếp tuyến.",
      "Gỗ để lâu ngày, màu tối dần thành đỏ nâu, nâu đen.",
      "Do gỗ Cẩm lai quý và có giá trị cao nên được tận thu, vì thế gỗ xẻ, gỗ đẽo vuông khá đa dạng về hình dạng và kích thước.",
    ],
  ],
  [
    <String>[],
    [
      "Sản phẩm từ gỗ Cẩm lai thường được sơn phủ bằng vật liệu không màu trong suốt nên thấy rõ vân gỗ và màu nâu tím (màu nếp cẩm) rất đẹp. Nhiều loại sản phẩm có phần gỗ dác rất dễ nhận biết. Nhìn chung gỗ Cẩm lai có màu sáng hơn gỗ Trắc và giữ được màu lâu hơn gỗ Trắc."
    ],
  ],
  [
    [
      "Trên mặt xẻ dọc thường có sọc màu nâu đen.",
      "Mạch gỗ phân tán (lỗ mạch phân bố gần như đều khắp), thường là mạch đơn (một mạch đơn lẻ) và kép ngắn (2-3 mạch đơn liên kết thành mạch kép hướng xuyên tâm), ít khi gặp kép dài (trên 4 mạch đơn liên kết). Trong mạch ở gỗ lõi thường thấy có chất chứa màu nâu đen, nâu đỏ, ít khi trắng.",
      "Mô mềm dọc (màu sáng) vây quanh lỗ mạch thành hình cánh, cánh nối tiếp.",
      "Mô mềm thành dải hẹp tiếp tuyến, liên tục hoặc không liên tục, lệch hoặc lượn sóng, có chỗ đan với tia thành hình mạng lưới.",
      "Tia gỗ xếp tầng thành những đường kẻ ngang màu đậm cách đều nhau trên mặt cắt tiếp tuyến."
    ],
    [
      "Trên mặt xẻ dọc thường có sọc màu nâu đen.",
      "Mạch gỗ phân tán (lỗ mạch phân bố gần như đều khắp). Lỗ mạch có hai loại kích thước khác nhau (Hình 4.18). Mạch gỗ chủ yếu là mạch đơn (một mạch đơn lẻ) và kép ngắn (2 – 3 mạch đơn liên kết thành mạch kép hướng xuyên tâm), ít khi gặp kép dài (trên 4 mạch đơn liên kết). Trong mạch ở gỗ lõi thường thấy có chất chứa màu nâu đỏ.",
      "Mô mềm dọc vây quanh mạch thành hình cánh, cánh nối tiếp.",
      "Mô mềm thành dải hẹp tiếp tuyến, liên tục hoặc không liên tục, lệch hoặc lượn sóng. Dải mô mềm đan với tia thành hình mạng lưới rất nét là một đặc điểm đặc trưng để phân biệt với gỗ Trắc (Hình 4.19).",
      "Tia gỗ xếp tầng quan sát trên mặt cắt tiếp tuyến (Hình 4.20)."
    ],
  ]
];

final imageUrl = [
  [
    [
      "assets/images/Trac/Hinh 3.12.JPG",
      "assets/images/Trac/Hinh 3.13.JPG",
      "assets/images/Trac/Hinh 3.14.JPG",
    ],
    [
      "assets/images/Cam-lai/Hinh 4.12.JPG",
      "assets/images/Cam-lai/Hinh 4.13.JPG",
      "assets/images/Cam-lai/Hinh 4.14.JPG",
    ],
  ],
  [
    [
      "assets/images/Trac/Hinh 3.15.jpg",
      "assets/images/Trac/Hinh 3.16.JPG",
    ],
    [
      "assets/images/Cam-lai/Hinh 4.15.JPG",
    ],
  ],
  [
    <String>[],
    [
      "assets/images/Cam-lai/Hinh 4.16.jpg",
    ],
  ],
  [
    [
      "assets/images/Trac/Hinh 3.17.jpg",
      "assets/images/Trac/Hinh 3.17.png",
    ],
    [
      "assets/images/Cam-lai/Hinh 4.17.jpg",
      "assets/images/Cam-lai/Hinh 4.18.jpg",
    ],
  ],
];

class Wood extends StatelessWidget {
  final bool isFirstSpecies;

  const Wood({required this.isFirstSpecies}) : super();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Text(
              "Đặc điểm gỗ",
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 2.h),
          ...[
            "Đặc điểm gỗ tròn",
            "Đặc điểm gỗ xẻ",
            "Đặc điểm sản phẩm gỗ",
            "Đặc điểm bằng cấu tạo thô đại của gỗ",
          ].asMap().entries.map(
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
                    padding:  EdgeInsets.symmetric(vertical: 2.h),
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
