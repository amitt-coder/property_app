import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/api.dart';
import 'package:property/app/data/api_helper.dart';
import 'package:property/app/modules/signup/signup_controller.dart';
import 'package:property/app/routes/app_routes.dart';

import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import '../../utilis/app_color.dart';
import '../Login/login_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  SignupController signupController = Get.put(SignupController());

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                'Sign Up',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.LOGIN,);
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.inter(
                          color: AppColor.secondrytxtColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'First Name',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              EditProfileTextFormField(
                TextEditingController: signupController.firstnameController,
                hintName: 'First Name',
                TextInputType: TextInputType.name,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Last Name',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              EditProfileTextFormField(
                TextEditingController: signupController.lastnameController,
                hintName: 'Last Name',
                TextInputType: TextInputType.name,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Contact Number',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              EditProfileTextFormField(
                TextEditingController: signupController.contactnumberController,
                hintName: 'Contact Number',
                TextInputType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(11)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 15,
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
                TextEditingController: signupController.emailController,
                hintName: 'Email',
                TextInputType: TextInputType.emailAddress,
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Password',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => EditProfileTextFormField(
                TextEditingController: signupController.passwordController,
                hintName: 'Password',
                TextInputType: TextInputType.name,
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
                enable: true,
                showIcon: '',
                obscured: loginController.isCheck.value,
                sufix: loginController.isCheck.value
                    ? IconButton(
                  onPressed: () => loginController.setIsCheck(),
                  icon: Icon(
                    Icons.visibility_rounded,
                    size: 24,
                    color: Colors.black,
                  ),
                )
                    : IconButton(
                  onPressed: () => loginController.setIsCheck(),
                  icon: Icon(
                    Icons.visibility_off_rounded,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              )),
              SizedBox(
                height: 15,
              ),
              Text(
                'Confirm Password',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => EditProfileTextFormField(
                TextEditingController: signupController.confirmpasswordController,
                hintName: 'Confirm Password',
                TextInputType: TextInputType.name,
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
                enable: true,
                showIcon: '',
                obscured: loginController.isCheckConfirm.value,
                sufix: loginController.isCheckConfirm.value
                    ? IconButton(
                  onPressed: () => loginController.setIsConfirmPassword(),
                  icon: Icon(
                    Icons.visibility_rounded,
                    size: 24,
                    color: Colors.black,
                  ),
                )
                    : IconButton(
                  onPressed: () => loginController.setIsConfirmPassword(),
                  icon: Icon(
                    Icons.visibility_off_rounded,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              )),
              SizedBox(
                height: 30,
              ),
              CommonMaterialButton(
                height: 50,
                width: MediaQuery.of(context).size.width,
                text: 'Sign Up',
                color: AppColor.primaryColor,
                textcolor: Colors.white,
                ontap: () {
                  print('tap signup');
                  signupController.signup();
                },),
            ],
          ),
        ),
      ),
    );
  }
}
