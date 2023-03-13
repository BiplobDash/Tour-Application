import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/routes/routes.dart';
import 'package:shelter/widgets/violetButton.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../const/app_colors.dart';
import '../styles/styles.dart';

class UserFrom extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  Rx<TextEditingController> _dobController = TextEditingController().obs;
  Rx<DateTime> selectedTime = DateTime.now().obs;
  _selectedDate(BuildContext context) async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: selectedTime.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    if (selectedDate != null && selectedDate != selectedTime) {
      _dobController.value.text =
          '${selectedTime.value.day} - ${selectedTime.value.month} - ${selectedTime.value.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tell Us More About You.',
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.violetColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'We will not share your information outside this application.',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                FromField(_nameController, TextInputType.name, 'Full Name'),
                FromField(
                    _phoneController, TextInputType.number, 'Phone Number'),
                FromField(_addressController, TextInputType.text, 'Address'),
                Obx(() => TextFormField(
                      controller: _dobController.value,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: 'Date of Birth',
                          hintStyle: TextStyle(
                            fontSize: 15.sp,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.calendar_month_outlined))),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 2,
                  labels: ['Male', 'Female'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                VioletButton('Submit', ()=> Get.toNamed(privacyPolicy)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget FromField(controller, inputType, name) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles().textfiledDecoration(name),
  );
}
