import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final Function validator;
  Widget? suffix;
  TextEditingController controller;
  TextInputType? keyBoard;
  CustomTextField(
      {required this.title,
      required this.validator,
      required this.controller,
      this.suffix,
      this.keyBoard});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      controller: controller,
      keyboardType: keyBoard,
      decoration: InputDecoration(
          suffixIcon: suffix,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          hintText: title,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20))),
    );
  }
}
