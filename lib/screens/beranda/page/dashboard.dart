import 'package:flutter/material.dart';
import 'package:pisah_app/component/card_news.dart';
import 'package:pisah_app/screens/beranda/component/dashboard/card_trending.dart';
import 'package:pisah_app/screens/beranda/component/dashboard/header.dart';
import 'package:pisah_app/theme/theme.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(
                height: 25,
              ),
              textContainer("Trending"),
              ContainerCardTrending(
                width: width,
                height: height,
                trending: [
                  CardTrending(
                    text: "Karyawan KPK curi Barang Bukti Emas Batangan",
                    image: "assets/slider_trending/slide.jpg",
                  ),
                  CardTrending(
                    text: "Karyawan KPK curi Barang Bukti Emas Batangan",
                    image: "assets/slider_trending/slide.jpg",
                  ),
                  CardTrending(
                    text: "Karyawan KPK curi Barang Bukti Emas Batangan",
                    image: "assets/slider_trending/slide.jpg",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textContainer("Local News"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 35,
                    decoration: BoxDecoration(
                        color: bluelightColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "National News",
                        style: robotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CardNews(),
                  CardNews(),
                  CardNews(),
                ],
              ),
            ],
          ),
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
