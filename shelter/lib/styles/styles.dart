import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  TextStyle mytextStyle =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp);
  InputDecoration textfiledDecoration(String hint) => InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 15.sp,
      ));
}
