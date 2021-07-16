import 'package:flutter/material.dart';
import 'package:pisah_app/theme/theme.dart';

import '../../get_started.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GetStarted(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: bluelightColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 63, left: 20, right: 20),
          child: child,
        ),
      ),
    );
  }
}
