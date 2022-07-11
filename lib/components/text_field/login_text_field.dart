import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final Widget icon;
  final Widget suffixIcon;
  final String hintText;
  final bool? isSecure;
  final Function(String) onChanged;
  const LoginTextField({
    Key? key,
    required this.controller,
    required this.icon,
    required this.suffixIcon,
    required this.hintText,
    this.isSecure,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        obscureText: isSecure ?? false,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            textBaseline: TextBaseline.alphabetic),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          fillColor: const Color.fromARGB(1000, 245, 245, 245),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            alignment: Alignment.center,
            width: 30,
            child: icon,
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 0,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
