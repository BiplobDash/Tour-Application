import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/violetButton.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            VioletButton('Agree', () {
              print('Clicked');
            }),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    ));
  }
}
