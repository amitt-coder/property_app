import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginController extends GetxController {


  RxBool isCheck = true.obs;
  var isChecked = false.obs;
  RxBool isCheckConfirm = true.obs;
  RxString check = '0'.obs;
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();






  final RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }
    return null;
  }


  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;
    if (check.value == '0') {
      check.value = '1';
    } else {
      check.value = '0';
    }
  }

  void setIsCheck() {
    print("function got called");
    isCheck.toggle();
    update();
  }

  void setIsConfirmPassword() {
    print("function got called");
    isCheckConfirm.toggle();
    update();
  }



  // Future<void> Login_api() async {
  //   print('-------------------LoginApi------------------');
  //   print('email ${emailController.text.trim()}');
  //   print('pass ${passwordController.text.trim()}');
  //
  //   try {
  //
  //     var response = await http.post(Uri.parse(Api.login), body: {
  //       'email': emailController.text.trim(),
  //       'password': passwordController.text.trim(),
  //     });
  //
  //     print("response ${response.statusCode}");
  //
  //     if (response.statusCode == 200) {
  //       Get.snackbar(
  //         'Success',
  //         '',
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Colors.green,
  //         colorText: Colors.white,
  //       );
  //       Get.offAllNamed(AppRoutes.BOTTOMNAVIGATION);
  //     } else {
  //       Get.offAllNamed(AppRoutes.BOTTOMNAVIGATION);
  //       // Get.snackbar(
  //       //   'Error',
  //       //   'An error occurred:',
  //       //   snackPosition: SnackPosition.BOTTOM,
  //       //   backgroundColor: Colors.red,
  //       //   colorText: Colors.white,
  //       // );
  //     }
  //   } catch (e) {
  //     Get.snackbar(
  //       'Error',
  //       'An error occurred: $e',
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: Colors.red,
  //       colorText: Colors.white,
  //     );
  //     // Handle any exceptions
  //     print('Error: $e');
  //   }
  // }


}
