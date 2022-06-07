import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/api/api_calling.dart';
import 'package:getx_demo/controllers/api_controller.dart';
import 'package:getx_demo/model/api_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiGetxDemo extends StatefulWidget {
  const ApiGetxDemo({Key? key}) : super(key: key);

  @override
  State<ApiGetxDemo> createState() => _ApiGetxDemoState();
}

///instant
// SharedPreferences? preferences;

class _ApiGetxDemoState extends State<ApiGetxDemo> {
  final controller = Get.put(ApiController());
  @override
  void initState() {
    super.initState();
    // getSaveData();
     preferences?.getString('user');
    
    // preferences?.getString('user');
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///Using Obx
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text('${controller.productList[index].userId}'),
                      title: Text(
                          '${controller.productList[index].id}'), //controller.productList[index].id
                      subtitle: Text('${preferences?.containsKey('user')}'),
                      // trailing: Text('${controller.productList[index].body}'),
                    ),
                  );
                },
              ),
            ),
          ),
          // Text('${preferences.containsKey('user')}'),
        ],
      ),
    );
  }
}
