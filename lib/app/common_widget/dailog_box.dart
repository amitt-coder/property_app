import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';

class DialogHelper {
  static void showDialog({
    required String title,
    required String content,
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title,
          style: GoogleFonts.inter(
          color: AppColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),),
        content: Text(content,
          style: GoogleFonts.inter(
              color: AppColor.secondrytxtColor,
              fontSize: 14,
              fontWeight: FontWeight.w400
          ),
        ),
        actions: [
          TextButton(
            onPressed: onCancel ?? () => Get.back(),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onConfirm();
              Get.back();
            },
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }
}
