import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/business_logic/auth.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/styles/styles.dart';
import 'package:shelter/widgets/violetButton.dart';

import '../ui/routes/routes.dart';

class SignIn extends StatelessWidget {
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
                  'Login\nto Your Account',
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.violetColor),
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
                VioletButton('Login', () => Auth().login(_emailController.text, _passwordController.text, context)),
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
                        text: 'Don\'t have registered yet?  ',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                        children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.violetColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(signUp),
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
