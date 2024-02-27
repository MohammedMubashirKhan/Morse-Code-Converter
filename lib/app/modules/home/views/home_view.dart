import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:morse_code_converter/app/modules/home/widgets/custom_text_field.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morse Code Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextField(
              controller: controller.morseTextController,
              labelText: "Enter Morse Code",
              onChanged: controller.morseTextChange,
            ),
            Obx(
              () => SelectableText(
                controller.morseText.value,
                style: const TextStyle(fontSize: 27),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
