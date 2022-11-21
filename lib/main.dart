import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ui_my_telkomsel/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
    //   return FutureBuilder(
    //       future: Future.delayed(Duration(seconds: 4)),
    //       builder: (context, snapshot) {
    //         if (snapshot.connectionState == ConnectionState.waiting) {
    //           return SplashScreen();
    //         } else {
    //           return GetMaterialApp(
    //             title: "Application",
    //             initialRoute: Routes.LOGIN,
    //             getPages: AppPages.routes,
    //           );
    //         }
    //       });
  }
}
