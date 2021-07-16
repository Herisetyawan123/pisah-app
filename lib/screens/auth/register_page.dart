import 'package:flutter/material.dart';
import 'package:pisah_app/component/input_text.dart';
import 'package:pisah_app/component/title_auth.dart';
import 'package:pisah_app/screens/auth/component/body.dart';
import 'package:pisah_app/screens/auth/login_page.dart';
import 'package:pisah_app/theme/theme.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
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
      body: Body(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleAuth(title: "Register"),
            SizedBox(
              height: 22,
            ),
            InputText(
              label: "NIK",
              hinttext: "30289762xxxxx",
              iconInput: Icon(Icons.people),
              password: false,
              width: MediaQuery.of(context).size.width - 40,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InputText(
                  label: "First Name",
                  hinttext: "Heri",
                  iconInput: null,
                  password: false,
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                ),
                SizedBox(
                  width: 10,
                ),
                InputText(
                  label: "Last Name",
                  hinttext: "Setyawan",
                  iconInput: null,
                  password: false,
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            InputText(
              label: "Address",
              hinttext: "303 Meadowview Drive",
              iconInput: Icon(Icons.search),
              password: false,
              width: MediaQuery.of(context).size.width - 40,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InputText(
                  label: "ZipCode",
                  hinttext: "6048",
                  iconInput: null,
                  password: false,
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                ),
                SizedBox(
                  width: 10,
                ),
                InputText(
                  label: "City",
                  hinttext: "jember",
                  iconInput: null,
                  password: false,
                  width: (MediaQuery.of(context).size.width - 60) / 2,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            InputText(
              label: "E-mail address",
              hinttext: "herisetyawan233@gmaul.com",
              iconInput: Icon(Icons.email),
              password: false,
              width: MediaQuery.of(context).size.width - 40,
            ),
            SizedBox(
              height: 15,
            ),
            InputText(
              label: "Password",
              hinttext: "Your Password",
              iconInput: Icon(Icons.lock),
              password: true,
              width: MediaQuery.of(context).size.width - 40,
            ),
            SizedBox(
              height: 15,
            ),
            InputText(
              label: "Confirm Password",
              hinttext: "Confirm Password",
              iconInput: Icon(Icons.lock),
              password: true,
              width: MediaQuery.of(context).size.width - 40,
            ),
            SizedBox(
              height: 47,
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
                    "REGISTER",
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
                Text("Already have an Account ? "),
                GestureDetector(
                  child: Text(
                    "Sign Up",
                    style: robotStyle.copyWith(
                      fontSize: 12,
                      color: blueColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
