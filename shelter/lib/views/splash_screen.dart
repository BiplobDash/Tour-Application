import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/styles/styles.dart';
import 'package:shelter/ui/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  Future chooseScreen() async {
    var userId = box.read('uid');
    if (userId == null) {
      Get.toNamed(onboarding);
    } else {
      Get.toNamed(mainHomeScreen);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () => chooseScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FlutterLogo(
              size: 100.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppStrings.appname,
              style: AppStyles().mytextStyle,
            ),
          ]),
        ),
      ),
    );
  }
}
