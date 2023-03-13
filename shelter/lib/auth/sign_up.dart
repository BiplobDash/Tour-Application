import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/styles/styles.dart';
import 'package:shelter/ui/routes/routes.dart';
import 'package:shelter/widgets/violetButton.dart';

class SignUp extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create\nYour Account',
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.violetColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Create your account and start your journey.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: AppStyles().textfiledDecoration("E-mail Adress"),
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  decoration: AppStyles().textfiledDecoration("Enter Password"),
                ),
                SizedBox(
                  height: 40.h,
                ),
                VioletButton('Create Account', () => Get.toNamed(userFrom)),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '--Or--',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/google.png')),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/facebook.png')),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Already an User?  ',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.violetColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(signIn),
                      ),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
