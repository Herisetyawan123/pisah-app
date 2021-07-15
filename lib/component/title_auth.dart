import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pisah_app/theme/theme.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({
    Key? key,
    required this.title,
  }) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
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
    );
  }
}
