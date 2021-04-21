import 'package:flutter/material.dart';
import 'package:untitled/screens/authentication/auth.dart';
import 'package:untitled/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/splash/splash.dart';

import 'constants/firebase.dart';
import 'controllers/appController.dart';
import 'controllers/authController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value){
    Get.put(AppController());
    Get.put(AuthController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
