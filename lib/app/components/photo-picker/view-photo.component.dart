import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ViewPhoto extends StatelessWidget {
  final String data;

  const ViewPhoto(this.data) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) => Navigator.pop(context),
      child: PhotoView(
        imageProvider: AssetImage(data),
      ),
    );
  }
}
