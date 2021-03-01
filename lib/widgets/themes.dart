import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    
        
        cardColor: Colors.white,
        canvasColor: MyTheme.darkCreamColor,
        buttonColor: MyTheme.lightBlueish,
        accentColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: Theme.of(context).textTheme,
        ),
        
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: MyTheme.darkCreamColor,
        buttonColor: MyTheme.darkBlueish,
        accentColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: Theme.of(context).textTheme,
        ),
      );

  //colors

  static Color creamolor = Color(0xfff5f5f5);
  static Color darkBlueish = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBlueish = Vx.indigo500;
}
