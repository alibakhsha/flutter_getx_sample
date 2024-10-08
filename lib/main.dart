import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/view/main_screen.dart';
import 'package:flutter_getx_sample/view/product_screen_getbuilder_widget.dart';
import 'package:flutter_getx_sample/view/product_screen_getx_widget.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreenGetbuilder(),
    );
  }
}
