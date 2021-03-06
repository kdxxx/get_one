import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/binding.dart';
import 'screens/homePage.dart';

void main() => runApp(GetMaterialApp(home: MyHomePage()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: "/", page: () => MyHomePage(), binding: HomeBinding())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
