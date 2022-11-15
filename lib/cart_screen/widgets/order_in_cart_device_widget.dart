// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cartpayment_test/constants/colors.dart';
import 'package:cartpayment_test/cart_screen/widgets/order_in_cart_accessories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderInCartDevice extends StatefulWidget {
  // final String child;

  const OrderInCartDevice({
    super.key,
    // required this.child,
  });

  @override
  State<OrderInCartDevice> createState() => _OrderInCartDevice();
}

class _OrderInCartDevice extends State<OrderInCartDevice> {
  int _num = 1;
  double radius = 8.0;

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
    // Product Amount of Customer Add Cart
    final List listOrder = ['iPhone 13 Pro Max Na Ja'];

    productItem(listOrder) {
      var productItem = Column(
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
                                'assets/images/iphone12_promax.png',
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
                                  'Apple Iphone 12  Pro Max',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
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
                                        child: Text('Size',
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
                                        child: Text('128 GB',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
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
                                '฿ 36,000',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Divider(
                            color: BorderColoreiei,
                          ),
                        )),
                      ]),
                      SizedBox(
                        height: 4,
                      ),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  children: [
                                    Text('Contract'),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        'No Contract',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  children: [
                                    Text('New Number'),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        '089-999-2322',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    children: [
                                      Text('SIM Type'),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: Text(
                                          'Physical SIM',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [Text(''), Text('')],
                              )
                            ],
                          )
                        ],
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
      return productItem;
    }

    Widget productListInCart = ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listOrder.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return productItem(listOrder[index]);
      },
    );

    return productListInCart;
  }
}

void doNothing(BuildContext context) {}
