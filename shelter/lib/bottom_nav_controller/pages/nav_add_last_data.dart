import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/widgets/violetButton.dart';

import '../../widgets/custom_text_feild.dart';

class NavAddLastStep extends StatefulWidget {
  String name;
  String description;
  String cost;
  String facility;
  String destination;
  NavAddLastStep(
      {required this.name,
      required this.description,
      required this.cost,
      required this.facility,
      required this.destination});

  @override
  State<NavAddLastStep> createState() => _NavAddLastStepState();
}

class _NavAddLastStepState extends State<NavAddLastStep> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25, top: 40.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                customTextField("Phone Number", _phoneController),
                customTextField("Destination Date & Time", _dateTimeController),
                Text(
                  "Choose Images",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9EBED),
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.r),
                    ),
                  ),
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
                Container(
                  height: 150.h,
                  // child: ListView.builder(itemBuilder: ),
                  color: Colors.green,
                ),
                SizedBox(height: 50.h,),
                VioletButton('Upload', (){})
              ],
            ),
          ),)),
    );
  }
}
