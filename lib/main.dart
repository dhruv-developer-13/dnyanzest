import 'package:dnyanzest/Constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // I have replaced it with GetMaterialApp which is just like Provider Scope to use GetX State Management
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      title: 'Dnyanzest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //Splash Route Declare Karo
      initialRoute: AppRoutes.studentHome,
    );
  }
}
