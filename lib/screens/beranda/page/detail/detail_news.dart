import 'package:flutter/material.dart';
import 'package:pisah_app/screens/beranda/component/detail_news.dart/detal_compt.dart';
import 'package:pisah_app/theme/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Karyawan KPK curi  Barang Bukti Emas Batangan",
                  style: robotStyle.copyWith(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                ThumbnailImage(
                  image: "assets/slider_trending/slide.jpg",
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quibusdam voluptatem nam ipsum corporis quasi itaque libero tempore corrupti harum dicta aut impedit eligendi temporibus omnis facere, excepturi sequi commodi enim inventore dignissimos atque? Itaque illum eveniet ipsa hic id iusto, vitae veniam libero labore, ullam odit illo voluptatibus sed architecto doloribus ipsum soluta? Molestiae corporis id, blanditiis reiciendis itaque incidunt reprehenderit aspernatur eius omnis ipsum soluta, repudiandae unde quos dolores eligendi sunt culpa autem, obcaecati fugit.",
                    style: robotStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quibusdam voluptatem nam ipsum corporis quasi itaque libero tempore corrupti harum dicta aut impedit eligendi temporibus omnis facere, excepturi sequi commodi enim inventore dignissimos atque? Itaque illum eveniet ipsa hic id iusto, vitae veniam libero labore, ullam odit illo voluptatibus sed architecto doloribus ipsum soluta? Molestiae corporis id, blanditiis reiciendis itaque incidunt reprehenderit aspernatur eius omnis ipsum soluta, repudiandae unde quos dolores eligendi sunt culpa autem, obcaecati fugit.",
                    style: robotStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
