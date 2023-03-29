import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
    'cover-one.jpeg',
    'cover-one.webp',
    'cover-three.webp',
    'cover-two.webp',
    'debtakhum.jpeg',
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
                              // image: DecorationImage(image: )
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
                    }))
          ],
        ),
      ),
    );
  }
}
