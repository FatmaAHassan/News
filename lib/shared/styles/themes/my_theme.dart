import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: lightGreen,
      // scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        // centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 20 , color: Colors.white, fontWeight: FontWeight.bold),
        // backgroundColor: Colors.transparent,
        // elevation: 0.0,
      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 18,
              color: Color(0xff242424),
              fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 18,
            color: Color(0xff242424),
            fontWeight: FontWeight.w200,
          ),
          bodySmall: GoogleFonts.elMessiri(
            fontSize: 18,
            color: Color(0xff242424),
            fontWeight: FontWeight.normal,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // selectedLabelStyle: GoogleFonts.aBeeZee(
        //   color: blackColor
        // ),
        // backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
      ));
  static ThemeData darkTheme = ThemeData();
}
