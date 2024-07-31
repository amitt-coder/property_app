import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CommonMaterialButton extends StatelessWidget {
  String text;
  Color color;
  Color textcolor;
  Function()? ontap;
  double height;
  double width;

  CommonMaterialButton({
    required this.text, required this.color, required this.textcolor,
    required this.ontap,
    required this.height,
    required this.width,

  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed:ontap,
      height: height,
      minWidth:width,
      child: Text(text,
          style: GoogleFonts.inter(fontSize: 14,
            fontWeight: FontWeight.w700,
            color: textcolor,
          )
      ),
    );
  }
}