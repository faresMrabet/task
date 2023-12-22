import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String? text;
  final Function? function;

  const CustomText({super.key, this.text, this.function});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9, right: 5, bottom: 2),
      child: GestureDetector(
        onTap: () {
          widget.function!();
        },
        child: Container(
          width: 85,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Center(
              child: Text(
                widget.text!,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
