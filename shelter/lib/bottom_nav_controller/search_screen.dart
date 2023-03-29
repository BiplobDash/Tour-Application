
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Search for your next tour",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
