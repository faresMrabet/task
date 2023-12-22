import 'package:flutter/material.dart';
import 'package:task/widget/containers.dart';

class Cont extends StatefulWidget {
  final Function? function;
  final Image? image;
  final String text;
  final String text2;

  const Cont(
      {super.key,
      this.image,
      required this.text,
      required this.text2,
      this.function});

  @override
  State<Cont> createState() => _ContState();
}

class _ContState extends State<Cont> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 8, top: 25),
      child: GestureDetector(
        onTap: () {
          widget.function!;
          ;
        },
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Stack(
              children: [
                Positioned(child: widget.image!),
                Positioned(
                  top: 70,
                  child: Containers(
                    text: 'NEW',
                  ),
                ),
                Positioned(
                  top: 110,
                  child: Text(
                    widget.text2,
                    style: TextStyle(
                        fontFamily: 'italic',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 145,
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        fontFamily: 'italic',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
