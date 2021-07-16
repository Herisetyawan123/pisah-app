import 'package:flutter/material.dart';
import 'package:pisah_app/theme/theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

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
