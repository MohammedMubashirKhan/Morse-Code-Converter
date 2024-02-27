import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController morseTextController = TextEditingController();
  RxString morseText = "Enter Morse Code".obs;

  void morseTextChange(String? text) {
    if (text == null) return;

    if (text.isEmpty) {
      morseText.value = "Enter Morse Code";
      return;
    }

    morseText.value = text;
    log("${text.isEmpty}");
  }
}
