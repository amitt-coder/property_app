import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_materialbutton.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/editprofile_textformfield_widget.dart';
import 'change_password_controller.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  final ChangePasswordController changePasswordController = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Container(
          decoration: Themes.withoutbordershadowDecoration,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Change Password',
              style: GoogleFonts.inter(
                color: AppColor.primaryColor,
                fontSize: 21,
                fontWeight: FontWeight.w600
              ),
              ),
              Divider(
                color: AppColor.borderColor,
                thickness: 1,
              ),
              SizedBox(height: 20,),
              Container(
                decoration: Themes.boxDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Password',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() => EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Current Password',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      enable: true,
                      showIcon: '',
                      obscured: changePasswordController.isCheck.value,
                      sufix: changePasswordController.isCheck.value
                          ? IconButton(
                        onPressed: () => changePasswordController.setIsCheck(),
                        icon: Icon(
                          Icons.visibility_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      )
                          : IconButton(
                        onPressed: () => changePasswordController.setIsCheck(),
                        icon: Icon(
                          Icons.visibility_off_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    )),
                    SizedBox(height: 15,),
                    Text(
                      'New Password',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(() => EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'New Password',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      enable: true,
                      showIcon: '',
                      obscured: changePasswordController.newPassword.value,
                      sufix: changePasswordController.newPassword.value
                          ? IconButton(
                        onPressed: () => changePasswordController.setnewPassword(),
                        icon: Icon(
                          Icons.visibility_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      )
                          : IconButton(
                        onPressed: () => changePasswordController.setnewPassword(),
                        icon: Icon(
                          Icons.visibility_off_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    )),
                    SizedBox(height: 15,),
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
                      TextEditingController: null,
                      hintName: 'Confirm Password',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(6)],
                      enable: true,
                      showIcon: '',
                      obscured: changePasswordController.newconfirmPassword.value,
                      sufix: changePasswordController.newconfirmPassword.value
                          ? IconButton(
                        onPressed: () => changePasswordController.setnewconfirmPassword(),
                        icon: Icon(
                          Icons.visibility_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      )
                          : IconButton(
                        onPressed: () => changePasswordController.setnewconfirmPassword(),
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
                    CommonMaterialButton(text:'Update',
                        color: AppColor.primaryColor,
                        textcolor: Colors.white,
                        ontap: (){
                        Get.offAllNamed('/bottomnavigation');
                        },
                        height: 45,
                        width: MediaQuery.of(context).size.width*0.35)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
