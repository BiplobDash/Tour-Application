import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/nav_home_categories.dart';

class navHome extends StatefulWidget {
  const navHome({Key? key}) : super(key: key);

  @override
  State<navHome> createState() => _navHomeState();
}

class _navHomeState extends State<navHome> {
  final RxInt _currentIndex = 0.obs;
  var _dotPosition = 0;
  // Carousel-Image
  List<String> _carouselImages = [
    'assets/images/cover-one.jpeg',
    'assets/images/cover-one.webp',
    'assets/images/cover-three.webp',
    'assets/images/cover-two.webp',
    'assets/images/debtakhum.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CarouselSlider(
                items: _carouselImages
                    .map((item) => Padding(
                  padding: EdgeInsets.only(left: 3, right: 3),
                  child: Container(
                    decoration: BoxDecoration(
                      // image: DecorationImage(image: NetworkImage(item),
                      // fit: BoxFit.fill),
                      color: Colors.green,
                    ),
                  ),
                ))
                    .toList(),
                options: CarouselOptions(
                    height: 200.h,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                    onPageChanged: (val, carouselPageChangedReason) {
                      setState(() {
                        _currentIndex.value = val;
                      });
                    })),
            SizedBox(height: 5.h,),
            Obx(
                  () => DotsIndicator(
                dotsCount:
                _carouselImages.length == 0 ? 1 : _carouselImages.length,
                position: _currentIndex.value.toDouble(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.r)
                    )
                  ),
                  child: Padding(padding: EdgeInsets.only(left: 20.w),
                    child: Row(
                      children: [
                        Icon(Icons.search_outlined,
                        size: 20.w,),
                        SizedBox(width: 10.w,),
                        Text('Search for your next tour',
                        style: TextStyle(fontSize: 15.sp),)
                      ],
                    ),                  ),
                ),
              ),
            ),
            navHomeCategories('For you', (){}),
            SizedBox(height: 5.h,),
            Container(height: 180.h,
            color: Colors.green,),
            SizedBox(
              height: 15.h,
            ),
            navHomeCategories("Recently Added", (){}),
            SizedBox(
              height: 5.h,
            ),
            Container(height: 180.h,
            color: Colors.green,),
            SizedBox(
              height: 15.h,
            ),
            navHomeCategories("Top Places", (){}),
            SizedBox(
              height: 5.h,
            ),
            Container(height: 80.h,
            color: Colors.green,),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
