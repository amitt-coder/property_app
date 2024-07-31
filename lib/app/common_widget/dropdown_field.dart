import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/app_color.dart';

class DropDownField extends StatefulWidget {

  String selectValue;
  String hintName;
  List<String> selectPriceInstallment;
  double width;
  double height;
  dynamic controller;


  DropDownField({
    required this.selectValue,
    required this.hintName,
    required this.width,
    required this.height,
    required this.selectPriceInstallment,
    required this.controller,
});
  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widget.width,
      height: widget.height,
      child: DropdownButtonFormField<String>(
        value: widget.selectValue,
        style: GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: AppColor.txtColor,
      ),
        items:  widget.selectPriceInstallment.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
              style:GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColor.txtColor,
            ),),
          );
        }).toList(),
        onChanged: (String? newValue) {
        widget.controller.updateValue(newValue);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText:  widget.hintName,
          hintStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: AppColor.txtColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: AppColor.borderColor,width: 1
              )
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: AppColor.borderColor,width: 1
              )
          ),
          errorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: AppColor.borderColor,width: 1
              )
          ),
          disabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: AppColor.borderColor,width: 1
              )
          ),
        ),
      ),
    );
  }
}
