import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/bottom_nav_controller/pages/nav_add.dart';
import 'package:shelter/bottom_nav_controller/pages/nav_favrt.dart';
import 'package:shelter/bottom_nav_controller/pages/nav_home.dart';
import 'package:shelter/const/app_strings.dart';

class BottomNavController extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  RxBool _drawer = false.obs;

  final _pages = [
    NavHome(),
    NavAdd(),
    NavFavorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
          duration: Duration(microseconds: 400),
          top: _drawer.value == false ? 0 : 100.h,
          bottom: _drawer.value == false ? 0 : 100.h,
          left: _drawer.value == false ? 0 : 200.w,
          right: _drawer.value == false ? 0 : -100.w,
          child: Container(
            decoration: BoxDecoration(),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: _drawer.value == false
                    ? IconButton(
                        onPressed: () {
                          _drawer.value = true;
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ))
                    : IconButton(
                        onPressed: () {
                          _drawer.value = false;
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                title: Text(AppStrings.appname),
              ),
              bottomNavigationBar: BottomNavigationBar(
                  onTap: (value) => _currentIndex.value = value,
                  currentIndex: _currentIndex.value,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_outlined), label: 'Add'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_outlined), label: 'Favorite'),
                  ]),
              body: _pages[_currentIndex.value],
            ),
          ),
        ));
  }
}
