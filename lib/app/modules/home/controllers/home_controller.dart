import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morse_code_converter/app/resources/morse_resources.dart';

class HomeController extends GetxController {
  TextEditingController morseTextController = TextEditingController();
  RxString morseText = "Enter Morse Code".obs;

  void morseTextChange(String? text) {
    if (text == null) return;

    if (text.isEmpty) {
      morseText.value = "Enter Morse Code";
      return;
    }

    morseText.value = MorseResources().morseToText(text);
    morseText.value = morseText.value.capitalize!;
    morseText.value = MorseResources().formatText(morseText.value);
  }
}
