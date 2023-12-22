import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:task/view/order_receipt.dart';
import 'package:task/widget/cont.dart';
import 'package:task/widget/containers.dart';
import 'package:task/widget/custom_text.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 27),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: IconButton(
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            icon: Icon(Icons.add_card)),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 17, right: 10, bottom: 14),
                      child: CustomText(
                          function: () {
                            Get.to(OrderReceipt());
                          },
                          text: 'MAN'),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 17, right: 20, bottom: 14),
                      child: CustomText(
                          function: () {
                            Get.to(OrderReceipt());
                          },
                          text: 'WOMEN'),
                    ),
                    Align(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: IconButton(
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            icon: Icon(Icons.search)),
                      ),
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 270,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/images/ml.png'),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              'BRACE YOURSELF GET YOURS !',
                              style: TextStyle(
                                  fontFamily: 'italic',
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 80),
                          child: Positioned(
                            child: Containers(
                              text: 'New ',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  CustomText(
                    function: () {
                      Get.to(OrderReceipt);
                    },
                    text: 'NEW IN',
                  ),
                  CustomText(
                    function: () {
                      Get.to(OrderReceipt);
                    },
                    text: 'CLOTHING',
                  ),
                  CustomText(
                    function: () {
                      Get.to(OrderReceipt);
                    },
                    text: 'NEW IN',
                  ),
                  CustomText(
                    function: () {
                      Get.to(OrderReceipt);
                    },
                    text: 'BOSS & NEW',
                  ),
                ],
              ),
              Row(
                children: [
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c2.png')),
                    text: 'COTTON-TERRY HO...',
                    text2: '198.00',
                  ),
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c3.png')),
                    text: 'CUNISEX RELAXED-F...',
                    text2: '106.00',
                  ),
                ],
              ),
              Row(
                children: [
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c1.png')),
                    text: 'CUNISEX RELAXED-F...',
                    text2: '200.00',
                  ),
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c4.png')),
                    text: 'COTTON-TERRY HO...',
                    text2: '250.00',
                  ),
                ],
              ),
              Row(
                children: [
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c3.png')),
                    text: 'CUNISEX RELAXED-F...',
                    text2: '140.00',
                  ),
                  Cont(
                    function: () {
                      Get.to(OrderReceipt());
                    },
                    image: Image(image: AssetImage('assets/images/c4.png')),
                    text: 'COTTON-TERRY HO...',
                    text2: '109.00',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: _selectedIndex,
        domeHeight: 25,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
            selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: Icon(Icons.message),
            title: Text('home'),
            selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: IconButton(
              onPressed: () {
                Get.to(OrderReceipt());
              },
              icon: Icon(Icons.search),
            ),
            selectedColor: Colors.yellow,
          ),
          MoltenTab(
            icon: IconButton(
              onPressed: () {
                Get.to(OrderReceipt());
              },
              icon: Icon(Icons.person),
            ),
            selectedColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
