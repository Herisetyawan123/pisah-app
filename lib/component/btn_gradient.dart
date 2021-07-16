import 'package:flutter/material.dart';
import 'package:pisah_app/theme/theme.dart';

class BtnGradient extends StatelessWidget {
  const BtnGradient(
      {Key? key,
      required this.text,
      this.width,
      this.border,
      required this.proses})
      : super(key: key);

  final Text text;
  final width;
  final border;
  final proses;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              bluelightColor,
              blueColor,
            ]),
        // color: bluelightColor,
        borderRadius: border,
      ),
      child: TextButton(
        onPressed: proses,
        child: text,
      ),
    );
  }
}
