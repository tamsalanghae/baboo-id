import 'package:dalbergia_id/app/components/appbar/appbar.component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

final data = [
  "Ứng dụng nhận dạng loài Trắc (Dalbergia cochinchinensis Pierre) và Cẩm lai (Dalbergia oliveri Gamble ex Prain) được Trung tâm Bảo tồn Thiên nhiên và Phát triển xây dựng dưới sự hỗ trợ của dự án “Tăng cường quản lý và bảo tồn loài Trắc và Cẩm lai ở Việt Nam” do Liên minh Châu âu tài trợ thông qua Chương trình các loài cây gỗ của CITES. Ứng dụng được phát triển với mục đích hỗ trợ cho các cơ quan quản lý, cán bộ thực thi pháp luật và các cán bộ kỹ thuật hoạt động trong lĩnh vực bảo tồn thiên nhiên, lâm nghiệp và thực thi pháp luật có thể tham khảo để nhận dạng được cây cũng như gỗ và các sản phẩm gỗ của hai loài này.",
  "Ứng dụng này giúp nhận dạng hai loài Trắc và Cẩm lai dựa trên đặc điểm cơ bản về hình thái của thân cây non và trưởng thành, đặc điểm lá, hoa, quả và các đặc điểm cấu tạo thô đại của gỗ và sản phẩm gỗ của hai loài cây Cẩm lai và Trắc. Các đặc điểm mô tả đều có thể quan sát bằng mắt thường hoặc thông qua các kính phóng đại cầm tay. Các hình ảnh minh họa được sử dụng trong Ứng dụng đều được chụp ở hiện trường, có tính thực tế, có chọn lọc để hiển thị được một cách cơ bản nhất các đặc điểm đặc trưng để nhận dạng hai loài này ngoài hiện trường.",
  "Chúng tôi hy vọng, Ứng dụng sẽ hỗ trợ được người sử dụng trong công tác quản lý, giám sát hoạt động khai thác và thương mại đối với nhóm gỗ này; cũng như hỗ trợ thực thi pháp luật để bảo tồn và phát triển hai loài cây gỗ nguy cấp, quý hiếm nêu trên ở Việt Nam."
];

class IntroductionPageView extends StatelessWidget {
  const IntroductionPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(),
      body: CupertinoScrollbar(
        child: Container(
          margin: EdgeInsets.fromLTRB(5.w, 4.h, 5.w, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nhận diện Trắc - Cẩm",
                  style: Get.textTheme.bodyText1!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                ...data.map(
                      (e) => Text(
                    "$e\n",
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(height: 90),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
