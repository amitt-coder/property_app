import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:property/app/modules/home/home_controller.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class CustomCarouselSlider extends StatelessWidget {
  final List<String> imgList;
  final CarouselController _carouselController = CarouselController();
  final PageController _pageController = PageController();
  final controller;
  CustomCarouselSlider({required this.imgList, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList
              .map((item) => ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: item,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      // placeholder: (context, url) =>
                      //     CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              controller.updateIndex(index);
            },
          ),
        ),
        SizedBox(height: 20),
        Obx(() => AnimatedSmoothIndicator(
              activeIndex: controller.activeIndex.value,
              count: imgList.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.primaryColor,
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.grey,
              ),
              onDotClicked: (index) {
                _carouselController.animateToPage(index);
              },
            )),
      ],
    );
  }
}
