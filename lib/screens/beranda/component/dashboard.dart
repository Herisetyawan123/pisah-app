import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pisah_app/component/card_news.dart';

import 'package:pisah_app/screens/beranda/component/header.dart';
import 'package:pisah_app/theme/theme.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: 25,
            ),
            textContainer("Trending"),
            CarouselSlider(
              options: CarouselOptions(height: 195.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return cardTrending();
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 35,
            ),
            textContainer("Local News"),
            Column(
              children: [
                cardNews(context),
                cardNews(context),
                cardNews(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container cardTrending() {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
          image: AssetImage("assets/slider_trending/slide.jpg"),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Color.fromRGBO(0, 0, 0, 0.5),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Spacer(),
                // Text("data"),
                Image.asset(
                  "assets/logo/trending.png",
                  width: 35,
                  height: 72,
                ),
              ],
            ),
            // Spacer(),
            Container(
              child: Text(
                "Karyawan KPK curi  Barang Bukti Emas Batangan",
                style: robotStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container textContainer(text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: robotStyle.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 22,
        ),
      ),
    );
  }
}
