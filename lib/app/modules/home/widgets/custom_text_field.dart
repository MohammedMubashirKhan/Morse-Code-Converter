import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.labelText = "Enter Text",
    this.controller,
  });

  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Set your border color here
          width: 2.0, // Set your border width here
        ),
        borderRadius: BorderRadius.circular(
            8.0), // Optional: Add border radius for rounded corners
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          labelText: 'Enter text',
          border: InputBorder.none, // Hide TextField default border
        ),
      ),
    );
  }
}
