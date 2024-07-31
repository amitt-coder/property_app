import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import '../../utilis/app_color.dart';
import 'forgot_password_controller.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  ForgotPasswordController forgotPasswordController = Get.put(ForgotPasswordController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start  ,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home,
                    color: AppColor.primaryColor,
                    size: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Property',
                    style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Reset Password',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Email',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              EditProfileTextFormField(
                TextEditingController: null,
                hintName: 'Email',
                TextInputType: TextInputType.emailAddress,
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 35,
              ),
              CommonMaterialButton(
                height: 50,
                width: MediaQuery.of(context).size.width,
                text: 'Send Password Reset Link',
                color: AppColor.primaryColor,
                textcolor: Colors.white,
                ontap: () {
                  Get.offAllNamed('/login');
                },),
            ],
          ),
      ),
    );
  }
}
