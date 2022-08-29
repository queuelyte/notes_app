import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/constant/theme_constant.dart';
import 'package:notes_app/controllers/auth_controller.dart';
import 'package:notes_app/controllers/shared_preferences_controller.dart';
import 'package:notes_app/firebase_options.dart';
import 'package:notes_app/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final sharedPrefs = Get.put(SharedPreferenceController());
  final authController =
      Get.put(AuthController()); // Instancing the auth controller into memory

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Notes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeConstant.lightTheme,
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
