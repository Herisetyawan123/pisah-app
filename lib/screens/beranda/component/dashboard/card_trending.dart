import 'package:flutter/material.dart';

class ContainerCardTrending extends StatelessWidget {
  const ContainerCardTrending({
    Key? key,
    required this.width,
    required this.height,
    required this.trending,
  }) : super(key: key);

  final double width;
  final double height;
  final List<Widget> trending;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 4,
      child: PageView(
        controller: PageController(viewportFraction: 0.8, initialPage: 1),
        scrollDirection: Axis.horizontal,
        children: trending,
      ),
    );
  }
}

class CardTrending extends StatelessWidget {
  const CardTrending({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        spreadRadius: 1.0)
                  ]),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color.fromRGBO(0, 0, 0, 0.5)
                      ])),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/logo/trending.png",
                        width: 25,
                      ),
                    ],
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
