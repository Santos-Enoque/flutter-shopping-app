import 'package:get/get.dart';

class AppController extends GetxController{
  static AppController instance = Get.find();
  RxBool isLoginWidgetDisplayed = true.obs;


  changeDIsplayedAuthWidget(){
    isLoginWidgetDisplayed.value = !isLoginWidgetDisplayed.value;
  }

}