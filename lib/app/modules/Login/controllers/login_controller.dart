import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  TextEditingController phoneC = TextEditingController();
  var checkController = false.obs;

  void onChanged() {
    phoneC.dispose();
    super.onClose();
  }
}
