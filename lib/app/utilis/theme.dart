import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class Themes {
  static final boxDecoration = BoxDecoration(
      // color: Color(0xFFFAFAFA),
      color: Color(0xFFF1F1F1),
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: AppColor.borderColor, width: 1));

  static final tabDecoration = BoxDecoration(
      color: AppColor.primaryColor, borderRadius: BorderRadius.circular(10));

  static final shadowDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColor.borderColor, width: 1),
      boxShadow: [
        BoxShadow(
          color: Colors.white,
          offset: Offset(
            5.0,
            3.0,
          ),
          blurRadius: 7.0,
        ),
      ]);

  static final withoutbordershadowDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(
            5.0,
            3.0,
          ),
          blurRadius: 7.0,
        ),
      ]);

  static final allListingDecoration = BoxDecoration(
    color: Color(0xFFFAFAFA),
    borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)),
    border: Border(
      bottom: BorderSide(color: AppColor.borderColor),
      right: BorderSide(color: AppColor.borderColor),
      left: BorderSide(color: AppColor.borderColor),
    ),
  );


}
