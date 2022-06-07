import 'package:get/state_manager.dart';
import 'package:getx_demo/api/api_calling.dart';
import 'package:getx_demo/model/api_model.dart';

class ApiController extends GetxController {
  var productList = <User>[].obs;
  GetApiClass getApiClass = GetApiClass();
  

  @override
  void onInit() {
    fatchData();
    super.onInit();
  }

  fatchData() async {
    final res = await getApiClass.getData();
    if (res!.isNotEmpty) {
      productList.value = res;
    } else {
      print('object');
    }
  }

  // fatchData() async {
  //   var res = await getApiClass.getData();
  //   if (res != null) {
  //     // productList.assignAll(res);
  //     productList.value = res;
  //   } else {
  //     print('null');
  //   }
  // }
}
