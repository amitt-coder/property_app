import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:property/app/utilis/app_color.dart';
import '../../utilis/api.dart';
import '../../data/api_helper.dart';
import '../../routes/app_routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupController extends GetxController {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController contactnumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  final storage = GetStorage();

  void signup() {
    print('----signup----');

    if (passwordController.text.trim() ==
        confirmpasswordController.text.trim()) {
      ApiHelper.POSTAPI(
        url: Api.owner_register,
        body: {
          'first_name': firstnameController.text.trim(),
          'last_name': lastnameController.text.trim(),
          'contact_number': contactnumberController.text.trim(),
          'email': emailController.text.trim(),
          'password': passwordController.text.trim(),
        },
        onSuccess: () {
          Get.offAllNamed(AppRoutes.LOGIN);
        },
      );
    } else {
      Fluttertoast.showToast(
          msg: "please check password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: AppColor.primaryColor,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    // signup_api();
    // ApiHelper.postApi(url: Api.owner_register, body: {
    //   'first_name': firstnameController.text.trim(),
    //   'last_name': lastnameController.text.trim(),
    //   'contact_number': contactnumberController.text.trim(),
    //   'email': emailController.text.trim(),
    //   'password': passwordController.text.trim(),
    // });
  }

  Future<void> signup_api() async {
    print('-------------------signup_api------------------');

    try {
      var response = await http.post(Uri.parse(Api.owner_register), body: {
        'first_name': firstnameController.text.trim(),
        'last_name': lastnameController.text.trim(),
        'contact_number': contactnumberController.text.trim(),
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      });

      print("response signup_api ${response.statusCode}");

      if (response.statusCode == 200) {
        Get.snackbar(
          'Success',
          '',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.offAllNamed(AppRoutes.LOGIN);
      } else {
        Get.snackbar(
          'Error',
          'An error occurred:',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print('Error: $e');
    }
  }
}
