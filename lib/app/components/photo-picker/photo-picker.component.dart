import 'package:dalbergia_id/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhotoPickerComponent extends StatefulWidget {
  final List<String> imageUrl;

  const PhotoPickerComponent({required this.imageUrl}) : super();

  @override
  _PhotoPickerComponentState createState() => _PhotoPickerComponentState();
}

class _PhotoPickerComponentState extends State<PhotoPickerComponent> {
  int _imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.imageUrl[_imageIndex], height: 70.w, width: 80.w, fit: BoxFit.cover),
        Wrap(
          runAlignment: WrapAlignment.start,
          children: widget.imageUrl
              .asMap()
              .entries
              .map(
                (e) => GestureDetector(
                  onTap: () => setState(() => _imageIndex = e.key),
                  child: Container(
                    height: 14.w,
                    width: 15.5.w,
                    child: Image.asset(widget.imageUrl[e.key], fit: BoxFit.cover, width: 16.w),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _imageIndex == e.key ? AppColor.accentColor : Colors.white,
                        width: 0.5.w,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
