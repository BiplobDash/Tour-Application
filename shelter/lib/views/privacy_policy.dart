import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/routes/routes.dart';

import '../widgets/violetButton.dart';

class PrivacyPolicy extends StatelessWidget {
  // PdfViewerController? _pdfViewerController;
  // RxBool _loaded = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          children: [
            Expanded(
              // child: SfPdfViewer.network(
              //   'https://firebasestorage.googleapis.com/v0/b/tour-application-b695e.appspot.com/o/privacy%20policy%2Fprivacy-policy.pdf?alt=media&token=7eb95b2f-524c-4a35-a492-5cf947aafe66',
              //   onDocumentLoaded: (PdfDocumentLoadedDetails details) {
              //     _loaded.value = true;
              //   },
              // ),
              child: Container(
                color: Colors.green,
              ),
            ),
            // Obx(() => _loaded == true
            //     ? VioletButton('Agree', () => Get.toNamed(bottomNavController))
            //     : Text("Still Loading")),
            VioletButton('Agree', () => Get.toNamed(mainHomeScreen)),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    ));
  }
}
