import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 45),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: image,
      ),
    );
  }
}
