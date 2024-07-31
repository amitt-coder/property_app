import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/splash/splash_controller.dart';
import 'package:property/app/utilis/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home,
            color:AppColor.primaryColor,
              size: 50,
            ),
            Text('Property',
                style: GoogleFonts.inter(
                  color: AppColor.primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
            )
          ],
        ),
      ),
    );
  }
}
