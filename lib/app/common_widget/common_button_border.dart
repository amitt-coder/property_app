import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';


class CommonButtonBorder extends StatelessWidget {
  String text;
  Color color;
  Color textcolor;
  Function()? ontap;
  double height;
  double width;

  CommonButtonBorder({
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
        borderSide: BorderSide(
          color: AppColor.primaryColor,width: 1
        ),
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