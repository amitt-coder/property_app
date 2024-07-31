import 'dart:io';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{

  final picker = ImagePicker();
  var selectedImagePath = ''.obs;
  var printLogoImagePath = ''.obs;


  void showPicker(context,String whichTurn) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: () {
                  getImage(ImageSource.gallery,whichTurn);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera,),
                title: const Text('Camera'),
                onTap: () {
                  getImage(ImageSource.camera,whichTurn);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void getImage(ImageSource source,String whichTurn) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      whichTurn=='user'?
      selectedImagePath.value = pickedFile.path:
      printLogoImagePath.value = pickedFile.path;
    } else {
      Get.snackbar('Error', 'No image selected');
    }
  }



}