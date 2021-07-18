import 'package:flutter/material.dart';
import 'package:pisah_app/component/btn_gradient.dart';
import 'package:pisah_app/component/input_text.dart';
import 'package:pisah_app/component/title_auth.dart';
import 'package:pisah_app/screens/auth/register_page.dart';
import 'package:pisah_app/screens/beranda/detail_news.dart';
import 'package:pisah_app/screens/beranda/firts_page.dart';
import 'package:pisah_app/theme/theme.dart';

import 'component/body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Body(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAuth(title: "Login"),
          SizedBox(
            height: 64,
          ),
          InputText(
            label: "E-mail adddress",
            hinttext: "youremail@address.com",
            iconInput: Icon(Icons.email),
            password: false,
            width: MediaQuery.of(context).size.width - 40,
          ),
          SizedBox(
            height: 34,
          ),
          InputText(
            label: "Password",
            hinttext: "your password",
            iconInput: Icon(Icons.lock),
            password: true,
            width: MediaQuery.of(context).size.width - 40,
          ),
          SizedBox(
            height: 125,
          ),
          Center(
            child: BtnGradient(
              text: Text(
                "LOGIN",
                style: robotStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              width: MediaQuery.of(context).size.width - 86,
              border: BorderRadius.circular(6),
              proses: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an Account ? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: Text(
                  "Create one",
                  style: robotStyle.copyWith(
                    fontSize: 12,
                    color: blueColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
