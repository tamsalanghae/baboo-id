import 'package:dalbergia_id/app/components/appbar/appbar.component.dart';
import 'package:dalbergia_id/app/home/search/overview/page/mature_stem.dart';
import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Value;
import 'package:sizer/sizer.dart';

class OverviewScreenSearch extends GetView {
  final int initialIndex;
  final PageController _controller = PageController(keepPage: true);

  OverviewScreenSearch(this.initialIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: staticAppbar(),
      body: Container(
        margin: EdgeInsets.fromLTRB(5.w, 4.h, 5.w, 0),
        child: PageView(
          controller: _controller,
          children: [
            MatureStem(),
            MatureStem(),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
               await _controller.previousPage(duration: Duration(milliseconds: 600), curve: Curves.fastLinearToSlowEaseIn);
              },
              behavior: HitTestBehavior.translucent,
              child: Image.asset("assets/images/home/arrow-left.png", width: 15.w),
            ),
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: () async {
                await _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.fastLinearToSlowEaseIn);
              },
              behavior: HitTestBehavior.translucent,
              child: Image.asset("assets/images/home/arrow-right.png", width: 15.w),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.offAllNamed("/home"),
        backgroundColor: Color(0xFFCAE8D8),
        elevation: 2,
        child: Icon(Icons.home_outlined, color: AppColor.accentColor, size: 36),
      ),
    );
  }
}
