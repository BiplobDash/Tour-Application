import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/routes/routes.dart';
import 'package:shelter/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: FirebaseOptions(apiKey: apiKey, appId: appId, messagingSenderId: messagingSenderId, projectId: projectId)
  // );
  await GetStorage.init();
  runApp(App());
}

class App extends StatelessWidget {
  final Future _initialization = Firebase.initializeApp(
      name: 'Shelter',
      options: FirebaseOptions(
          apiKey: "AIzaSyAaeOmoq6yQiX7MouvwSe6em_z5S8WB4_A",
          appId: "1:748465776513:android:29eec9f19ae1e63c826a80",
          messagingSenderId: "748465776513",
          projectId: "tour-application-b695e"));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: ((context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MyApp();
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appname,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                color: Colors.black,
              )
            ),
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.poppinsTextTheme(
                  Theme.of(context).textTheme.apply()),
              scaffoldBackgroundColor: AppColors.scaffoldColor),
          initialRoute: splash,
          getPages: getpages,
          home: SplashScreen(),
        );
      },
    );
  }
}
