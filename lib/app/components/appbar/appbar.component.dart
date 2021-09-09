import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

PreferredSizeWidget staticAppbar({bool onFirstPage = false}) => AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 0,
      elevation: 0,
      titleSpacing: 0,
      title: GestureDetector(
        onTap: () {
          if (!onFirstPage) Get.offAllNamed("/home");
        },
        child: Row(
          children: [
            SizedBox(width: 8.w),
            Column(
              children: [
                Image.asset(
                  "assets/images/home/logo-dalbergia.png",
                  width: 30.w,
                ),
                Text("Dalbergia ID", style: Get.textTheme.bodyText1)
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/images/home/logo-ctsp.png",
              height: kToolbarHeight,
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    );

class BackButtonWidget extends StatelessWidget {
  final Color? iconColor;

  const BackButtonWidget({Key? key, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset("assets/images/home/back-button.svg", color: iconColor),
      onPressed: Navigator.of(context).pop,
    );
  }
}
