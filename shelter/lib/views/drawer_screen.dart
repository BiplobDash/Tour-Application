import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/routes/routes.dart';
import 'package:shelter/widgets/drawerItem.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 50.h, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.appname,
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              "Travel Agency",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.h,
            ),
            drawerItem("Support", () => Get.toNamed(support)),
            drawerItem("Privacy", () => Get.toNamed(privacy)),
            drawerItem("FAQ", () => Get.toNamed(faq)),
            drawerItem("Rate Us", () {}),
            drawerItem("How to use", () => Get.toNamed(howToUse)),
            Expanded(child: SizedBox()),
            InkWell(
              onTap: () => Get.toNamed(settings),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
