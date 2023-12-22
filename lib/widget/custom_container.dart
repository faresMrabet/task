import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String? text;
  final Function? function;
  final Color? color;
  final Color? colortext;

  const CustomContainer(
      {super.key, this.text, this.colortext, this.color, this.function});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function!();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        width: 220,
        height: 50,
        decoration: BoxDecoration(
            color: widget.color!,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey, width: 2)),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Center(
            child: Text(
              widget.text!,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: widget.colortext!),
            ),
          ),
        ),
      ),
    );
  }
}
