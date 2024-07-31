import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';


class EditProfileTextFormField extends StatelessWidget {

  final hintName;
  final TextEditingController;
  final TextInputType;
  final List<TextInputFormatter>? inputFormatters;
  bool enable;
  String showIcon;
  bool obscured;
  Widget? sufix;
  double? widthGet;
  int? lines;
  final String? Function(String?)? validator;


  EditProfileTextFormField({
    required  this.TextEditingController,
    required this.hintName,
    required this.TextInputType,
    required this.inputFormatters,
    required this.enable,
    required this.showIcon,
    required this.obscured,
     this.sufix,
    this.widthGet,
    this.lines,
    this.validator,
  });


  final double _height = Get.height, _width = Get.width;



  @override
  Widget build(BuildContext context) {
    return Container(
      // height: lines==7?100:50,
      width: widthGet,
      child: TextFormField(
        obscureText: obscured,
        enabled: enable,
        validator: validator,
        maxLines:obscured==false?lines:1,
        controller: TextEditingController,
        inputFormatters: inputFormatters,
        keyboardType: TextInputType,
        textInputAction: TextInputAction.done,
          style:  GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color:AppColor.txtColor,
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintName,
            hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColor.txtColor,
            ),
            suffixIcon:sufix,
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
            border:  OutlineInputBorder(
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
