import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pisah_app/component/pages/auth/register_page.dart';
import 'package:pisah_app/component/pages/get_started.dart';
import 'package:pisah_app/theme/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget InputText({label, hinttext, iconInput, bool password = false}) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black.withOpacity(0.87),
                fontSize: 14,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              child: TextField(
                obscureText: password,
                decoration: InputDecoration(
                  hintText: hinttext,
                  suffixIcon: iconInput,
                ),
              ),
            ),
          ],
        ),
      );
    }

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
              Container(
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: bluelightColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 3.0),
                        blurRadius: 9,
                        color: Color.fromARGB(30, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              InputText(
                label: "E-mail adddress",
                hinttext: "youremail@address.com",
                iconInput: Icon(Icons.email),
              ),
              SizedBox(
                height: 34,
              ),
              InputText(
                label: "Password",
                hinttext: "your password",
                iconInput: Icon(Icons.lock),
                password: true,
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
