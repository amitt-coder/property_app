import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property/app/utilis/images.dart';

class HomeController extends GetxController{

  var activeIndex = 0.obs;

  void updateIndex(int index) {
    activeIndex.value = index;
  }

  final List<String> imgList = [
    'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3AtMzEyLXRlZDY2OTYtY2hpbS5qcGc.jpg',
    'https://hotelholyvivasa.com/hotel-images/1649701286.png',
    'https://www.tablebed.com/wp-content/uploads/2022/03/Hotellihuoneen-sisustus_.png'
  ];

  var carouselIndex = 0.obs;

  void onPageChanged(int index) {
    carouselIndex.value = index;
  }




}