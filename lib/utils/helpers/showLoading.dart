import 'package:flutter/material.dart';
import 'package:get/get.dart';

showLoading(){
  Get.defaultDialog(
    title: "Loading...",
    content: CircularProgressIndicator(),
    barrierDismissible: false
  );
}

dismissLoadingWidget(){
  Get.back();
}