import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seat_management/controller/bindings.dart';
import 'package:seat_management/firebase_options.dart';
import 'package:seat_management/views/screens/HomeNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: RoomDetailsBinding(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: "/", page: () => const MainView()),
      ],

      // home: MainView()
    );
  }
}
