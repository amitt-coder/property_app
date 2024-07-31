import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/profile/profile_controller.dart';
import 'package:property/app/utilis/images.dart';
import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import '../../utilis/app_color.dart';
import '../../utilis/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.borderColor,
      appBar: CommonAppBar(
        automaticallyImplyLeading: false,
        title: 'Profile',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: () {
                  Get.toNamed('/language');
                },
                child: Image.asset(
                  ProjectImages.language,
                  height: 30,
                  width: 30,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Get.offAllNamed('/login');
              },
              icon: Icon(
                Icons.logout,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: Themes.shadowDecoration,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'My Profile',
                    style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: Themes.boxDecoration,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.borderColor, width: 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(
                                      5.0,
                                      3.0,
                                    ),
                                    blurRadius: 7.0,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Text(
                                    'Personal Information',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Divider(
                                  color: AppColor.borderColor,
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    Obx(() {
                                      return profileController
                                                  .selectedImagePath.value ==
                                              ''
                                          ? Image.asset(
                                              ProjectImages.tickets_person,
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.fill,
                                            )
                                          : ClipOval(
                                              child: Image.file(
                                                File(
                                                  profileController
                                                      .selectedImagePath.value,
                                                ),
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.fill,
                                              ),
                                            );
                                    }),
                                    Positioned(
                                        bottom: 0,
                                        right: 10,
                                        child: InkWell(
                                          onTap: () {
                                            profileController
                                                .showPicker(context,'user');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              Icons.camera_alt,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'First Name',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'First Name',
                                    TextInputType: TextInputType.name,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Last Name',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Last Name',
                                    TextInputType: TextInputType.name,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Email',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Email',
                                    TextInputType: TextInputType.emailAddress,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Contact Number',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Contact Number',
                                    TextInputType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Date of birth',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Date of birth',
                                    TextInputType: TextInputType.name,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'NIID Number',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'NIID Number',
                                    TextInputType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            // color: Colors.red,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.borderColor, width: 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(
                                      5.0,
                                      3.0,
                                    ),
                                    blurRadius: 7.0,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Text(
                                    'Print Details',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Divider(
                                  color: AppColor.borderColor,
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Print Name',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Name',
                                    TextInputType: TextInputType.name,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Print Address',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Address',
                                    TextInputType: TextInputType.name,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Print Contact',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: EditProfileTextFormField(
                                    TextEditingController: null,
                                    hintName: 'Contact',
                                    TextInputType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(11)
                                    ],
                                    enable: true,
                                    showIcon: '',
                                    obscured: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Print Logo',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Stack(
                                    children: [
                                      Obx(() {
                                        return profileController.printLogoImagePath.value ==
                                                ''
                                            ? InkWell(
                                                onTap: () {
                                                  profileController.showPicker(context,'logo');
                                                },
                                                child: Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColor.borderColor,
                                                      shape: BoxShape.circle),
                                                  child: Center(
                                                      child: Icon(
                                                    Icons.camera_alt,
                                                    size: 30,
                                                    color:
                                                        AppColor.primaryColor,
                                                  )),
                                                ),
                                              )
                                            : ClipOval(
                                                child: InkWell(
                                                  onTap: () {
                                                    profileController.showPicker(context,'logo');
                                                  },
                                                  child: Image.file(
                                                    File(
                                                      profileController
                                                          .printLogoImagePath
                                                          .value,
                                                    ),
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              );
                                      }),
                                      // Positioned(
                                      //     bottom: 0,
                                      //     right: 10,
                                      //     child: InkWell(
                                      //       onTap: () {
                                      //         profileController
                                      //             .showPicker(context);
                                      //       },
                                      //       child: Container(
                                      //         padding: EdgeInsets.all(5),
                                      //         decoration: BoxDecoration(
                                      //             color: Colors.blue,
                                      //             shape: BoxShape.circle),
                                      //         child: Icon(
                                      //           Icons.camera_alt,
                                      //           size: 25,
                                      //           color: Colors.white,
                                      //         ),
                                      //       ),
                                      //     ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CommonMaterialButton(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    text: 'Update',
                    color: AppColor.primaryColor,
                    textcolor: Colors.white,
                    ontap: () {
                      Get.offAllNamed('/bottomnavigation');
                    },
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
