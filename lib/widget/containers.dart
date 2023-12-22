import 'package:flutter/material.dart';

class Containers extends StatefulWidget {
  final String? text;

  const Containers({super.key, this.text});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 20,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: Center(
          child: Text(
            widget.text!,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
