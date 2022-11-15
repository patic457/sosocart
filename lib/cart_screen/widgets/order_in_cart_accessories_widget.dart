// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cartpayment_test/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderInCartAccessory extends StatefulWidget {
  const OrderInCartAccessory({super.key}); //required this.child

  @override
  State<OrderInCartAccessory> createState() => _OrderInCartAccessory();
}

class _OrderInCartAccessory extends State<OrderInCartAccessory> {
  int _num = 1;

  void addnum() {
    setState(() {
      _num++;
    });
  }

  void removenum() {
    setState(() {
      if (_num > 0) {
        _num--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: BorderColoreiei),
                color: Colors.white),
            child: ClipRect(
              child: Slidable(
                key: const ValueKey(0),
                endActionPane: const ActionPane(
                  motion: ScrollMotion(),
                  extentRatio: 0.21,
                  children: [
                    SlidableAction(
                      flex: 1,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      onPressed: doNothing,
                      backgroundColor: DeletebuttonColor,
                      foregroundColor: whiteColor,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: BorderColorsmall,
                            ),
                            child: Image.asset(
                              'assets/images/airpodpro.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 16),
                              Text(
                                'AirPods รองรับ MagSafe Charge',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text('Color',
                                        style: TextStyle(
                                          fontSize: 14,
                                        )),
                                  ),
                                  Expanded(
                                      child: Text('',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ))),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text('Pacific Blue',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Expanded(
                                      child: Text('',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ))),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Quantity'), Text('Total Order')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: removenum,
                            child: Icon(
                              Icons.remove,
                              color: ElevatedButtonIcon,
                              size: 20,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(32, 32),
                              backgroundColor:
                                  ElevatedButtonBg, // <-- Button color
                              // foregroundColor: Colors.red, // <-- Splash color
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 42,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: BorderColoreiei),
                                color: Colors.white),
                            child: Center(child: Text(_num.toString())),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            onPressed: addnum,
                            child: Icon(
                              Icons.add,
                              color: ElevatedButtonIcon,
                              size: 20,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size(32, 32),
                              backgroundColor:
                                  ElevatedButtonBg, // <-- Button color
                              // foregroundColor: Colors.red, // <-- Splash color
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Text(
                              '฿ 8,900',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void doNothing(BuildContext context) {}
