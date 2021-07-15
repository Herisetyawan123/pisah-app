import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pisah_app/component/pages/auth/login_page.dart';

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
          'Lorem, ipsum dolor sit amet consectetur adipisicing\n elit. Rem voluptas ipsum dolores, nemo nihil molestiae\n itaque esse consequuntur. Numquam, molestiae?',
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
            height: 120,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 208,
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
              borderRadius: BorderRadius.circular(50),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 208,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: GestureDetector(
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
          ),
        ],
      ),
    );
  }
}
