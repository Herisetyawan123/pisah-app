import 'package:flutter/material.dart';
import 'package:pisah_app/theme/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 88),
      child: Column(
        children: [
          Center(
            child: Text(
              "PISAH",
              style: titleTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
