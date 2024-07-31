import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/api.dart';
import 'package:property/app/data/api_helper.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import '../../routes/app_routes.dart';
import '../../utilis/app_color.dart';
import 'login_controller.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  LoginController loginController = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: SingleChildScrollView(
          child: Form(
            key: loginController.formkey,
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
                  'Sign in',
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
                      'New owner?',
                      style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(
                          AppRoutes.SIGNUP,
                        );
                      },
                      child: Text(
                        'Sign Up',
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
                  TextEditingController: loginController.emailController,
                  hintName: 'Email',
                  TextInputType: TextInputType.emailAddress,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                  validator: loginController.validateEmail,
                ),
                SizedBox(
                  height: 30,
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
                      validator: loginController.validatePassword,
                      TextEditingController: loginController.passwordController,
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(() => Container(
                              height: 20,
                              width: 20,
                              child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.red, width: 2)),
                                  activeColor: AppColor.primaryColor,
                                  checkColor: Colors.white,
                                  value: loginController.isChecked.value,
                                  onChanged: (value) {
                                    loginController.toggleCheckbox(value);
                                  }),
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Remember Me',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.FORGOTPASSWORD);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.inter(
                            color: AppColor.secondrytxtColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CommonMaterialButton(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  text: 'Sign in',
                  color: AppColor.primaryColor,
                  textcolor: Colors.white,
                  ontap: () {
                    // if (loginController.formkey.currentState!.validate()) {
                    //   ApiHelper.POSTAPI(
                    //     url: Api.login,
                    //     body: {
                    //       'email': loginController.emailController.text.trim(),
                    //       'password': loginController.passwordController.text.trim()
                    //     },
                    //     onSuccess: () {
                    //     Get.offAllNamed(AppRoutes.BOTTOMNAVIGATION);
                    //   },
                    //   );
                      // loginController.Login_api();
                      Get.offAllNamed(AppRoutes.BOTTOMNAVIGATION);
                    // }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
