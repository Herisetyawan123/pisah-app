import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pisah_app/component/input_text.dart';
import 'package:pisah_app/component/title_auth.dart';
import 'package:pisah_app/screens/auth/register_page.dart';
import 'package:pisah_app/screens/get_started.dart';
import 'package:pisah_app/theme/theme.dart';

class LoginPage extends StatelessWidget {
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
                child: Container(
                  width: MediaQuery.of(context).size.width - 86,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          bluelightColor,
                          blueColor,
                        ]),
                    // color: bluelightColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: robotStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
        ),
      ),
    );
  }
}
