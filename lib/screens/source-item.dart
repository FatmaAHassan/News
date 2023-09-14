import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SourceItem extends StatelessWidget {
  String txt;
  bool isSelected;

  SourceItem(this.txt, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(8) ,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Color(0xff39A552),
        ),
        color: isSelected?Color(0xff39A552): Colors.transparent
      ),
      child: Text(
        txt,
        style: GoogleFonts.exo(fontSize: 14,
            fontWeight: FontWeight.w200,
        color: isSelected?Colors.white:Color(0xff39A552),),
      ),
    );
  }
}
