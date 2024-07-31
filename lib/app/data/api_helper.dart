import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:http/http.dart' as http;

class ApiHelper{

  //
  // static Future<dynamic?> postApi(
  //     {required String url, required dynamic body}) async {
  //   print("===>>> url $url");
  //   print("===>>> body $body");
  //
  //   // var headers = {'Content-Type': 'application/json'};
  //   var request = http.Request('POST', Uri.parse(url));
  //   request.body = json.encode(body);
  //   // request.headers.addAll(headers);
  //
  //   http.StreamedResponse response = await request.send();
  //   var res = await response.stream.bytesToString();
  //
  //   print("===>>> response $res");
  //   if (response.statusCode == 200) {
  //
  //
  //     return json.decode(res);
  //
  //   } else if (response.statusCode == 404) {
  //     print("2000***");
  //     print('Error: Not Found');
  //     // throw "Error: Not Found";
  //     // Handle 404 status code
  //   } else if (response.statusCode == 401) {
  //     print("4000");
  //     print('Error: Unauthorized');
  //     var errorResponse = json.decode(res);
  //
  //     // Check if the error response contains a specific error code or message
  //     if (errorResponse['errors'] != null &&
  //         errorResponse['errors'][0]['code'] == 'auth-001') {
  //       print('Handle Unauthorized Error: ${errorResponse['errors'][0]['message']}');
  //       // Perform custom handling for the "auth-001" error, such as showing a snackbar
  //       // or preventing navigation to the login screen.
  //     } else {
  //       print("42000");
  //       // Handle other 401 errors (if needed)
  //       // You can choose to navigate to the login screen here if it's a different kind of 401 error.
  //     }
  //   }
  //   else if (response.statusCode == 500) {
  //
  //     print('Error: Internal Server Error');
  //     // throw "Error: Internal Server Error";
  //     // Handle 500 status code
  //   } else if (response.statusCode == 429) {
  //     print('Error: Too Many Requests');
  //     // throw "Error: Too Many Requests";
  //     // Handle 429 status code
  //   } else {
  //     print('Error: ${response.statusCode}');
  //     // throw "Error: ${response.statusCode}";
  //     // Handle other status codes
  //   }
  // }


    static Future<dynamic?> getApi(String url, ) async {
      print("===>>> url $url");
      var request = http.Request('GET', Uri.parse(url));

      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();

      print("===>>> response $res");


      if (response.statusCode == 200) {
        return json.decode(res);
      } else if (response.statusCode == 404) {
        print('Error: Not Found');
        // throw "Error: Not Found";
        // Handle 404 status code
      } else if (response.statusCode == 500) {
        print('Error: Internal Server Error');
        // throw "Error: Internal Server Error";
        // Handle 500 status code
      } else if (response.statusCode == 429) {
        print('Error: Too Many Requests');
        // throw "Error: Too Many Requests";
        // Handle 429 status code
      } else {
        print('Error: ${response.statusCode}');
        // throw "Error: ${response.statusCode}";
        // Handle other status codes
      }
    }


  static Future<dynamic> POSTAPI({required String url,required dynamic body,
    required void Function() onSuccess,}) async {

    print('-------------------POSTAPI------------------');

    print('url: $url');
    print('body: $body');

    try {
      var response = await http.post(Uri.parse(url), body: body);

      if (response.statusCode == 200) {
        Get.snackbar(
          'Success',
          '',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        onSuccess();
        return json.decode(response.body);
      } else {
        // Get.snackbar(
        //   'Error',
        //   'An error occurred:',
        //   snackPosition: SnackPosition.BOTTOM,
        //   backgroundColor: Colors.red,
        //   colorText: Colors.white,
        // );
        onSuccess();
        return response;
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      // Handle any exceptions
      print('Error: $e');
      return null; // Return null in case of an error
    }
  }

}