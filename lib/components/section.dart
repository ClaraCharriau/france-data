import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section extends StatelessWidget {
  const Section({super.key, required this.sectionTitle, required this.content});

  final String sectionTitle;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        // Section title
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Text(
              sectionTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: GoogleFonts.merriweather().fontFamily),
            ),
          ),
        ),

        // Article content
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Text(
            content,
            style: TextStyle(
                fontSize: 12,
                fontFamily: GoogleFonts.merriweather().fontFamily),
          ),
        ),
      ],
    );
  }
}
