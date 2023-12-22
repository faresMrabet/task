import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/home_page.dart';
import 'package:task/view/order_receipt.dart';
import 'package:task/widget/custom_container.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Positioned(
              width: 400,
              top: 270,
              child: Container(
                width: 100,
                height: 320,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(150)),
              )),
          Positioned(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                width: 300,
                height: 650,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'TRANSACTION',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 55),
                      Image(
                        image: AssetImage('assets/images/done.png'),
                      ),
                      Text(
                        'PAYMENT SUCCESS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          'Your item will arrive at your address according to the delivery date',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ),
                      SizedBox(height: 50),
                      CustomContainer(
                        function: () {
                          Get.to(HomePage());
                        },
                        text: 'BACK TO SHOP',
                        color: Colors.black,
                        colortext: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomContainer(
                        function: () {
                          Get.to(OrderReceipt());
                        },
                        text: 'TRANSACTION DETAIL',
                        color: Colors.white,
                        colortext: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
