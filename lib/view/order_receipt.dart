import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/home_page.dart';
import 'package:task/view/success.dart';
import 'package:task/widget/custom_container.dart';

class OrderReceipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Text(
              "RECEPT",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 90, left: 50, right: 50, bottom: 90),
            child: Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(9)),
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 15, top: 13),
                child: Text(
                  'Klarna.',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 25),
                child: Text(
                  'SUBTOTAL :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 235),
                child: Text('300.00'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 25),
                child: Text(
                  'SHIPMENT SERVICE :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 182),
                child: Text('02.15'),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text('DISCOUNT :',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 237),
                child: Text('- 20.15'),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 20),
            child: Container(
              width: 330,
              height: 1,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 7),
                child: Text('TOTAL PAYMENT :',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 175),
                child: Text(
                  ' 178.15',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: CustomContainer(
              function: () {
                Get.to(Success());
              },
              text: 'PAY NOW',
              colortext: Colors.white,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
