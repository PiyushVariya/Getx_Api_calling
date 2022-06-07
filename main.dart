import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/api/api_calling.dart';
import 'package:getx_demo/api_demo.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferences.getInstance().then((value) {
    preferences = value;
    
  });
  runApp(
    const GetMaterialApp(
      home: ApiGetxDemo(),
    ),
  );
}
