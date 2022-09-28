import 'package:flutter/material.dart';

class ManagePhotos extends StatelessWidget {
  final String imgPath;
  final double height;
  final double width;

  const ManagePhotos(
      {Key? key, required this.imgPath, this.height = 300, this.width = 400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        height: height,
        width: width,
        imgPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
