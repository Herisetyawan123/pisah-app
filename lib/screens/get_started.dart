import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pisah_app/component/btn_gradient.dart';
import 'package:pisah_app/screens/auth/login_page.dart';

import 'package:pisah_app/theme/theme.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 125, bottom: 19),
        child: Center(
          child: Text(
            "PISAH",
            style: titleTextStyle,
          ),
        ),
      );
    }

    Widget sliderGet() {
      return CarouselSlider(
        options: CarouselOptions(
          height: 229,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(milliseconds: 1500),
          pauseAutoPlayOnTouch: true,
        ),
        items: [1, 2, 3, 4].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Image.asset(
                  "assets/slider_get/slider$i.png",
                  width: 329,
                ),
              );
            },
          );
        }).toList(),
      );
    }

    Widget textGet() {
      return Container(
        child: Text(
          'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rem voluptas ipsum dolores, nemo nihil molestiae itaque esse consequuntur. Numquam, molestiae?',
          style: greyTextStyle,
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          sliderGet(),
          SizedBox(
            height: 71,
          ),
          textGet(),
          SizedBox(
            height: 100,
          ),
          BtnGradient(
            text: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            width: MediaQuery.of(context).size.width - 208,
            border: BorderRadius.circular(50),
            proses: () {},
          ),
          SizedBox(
            height: 19,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: Center(
              child: Text(
                "Skip",
                style: TextStyle(
                  color: blueTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
