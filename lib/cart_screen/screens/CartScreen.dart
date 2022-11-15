// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cartpayment_test/cart_screen/widgets/button_payment_widget.dart';
import 'package:cartpayment_test/constants/colors.dart';
import 'package:cartpayment_test/cart_screen/widgets/order_in_cart_accessories_widget.dart';
import 'package:cartpayment_test/cart_screen/widgets/order_in_cart_device_widget.dart';
import 'package:cartpayment_test/cart_screen/widgets/recommended_product_widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bodyScaffold = Column(
      children: [
        SizedBox(height: 16),
        OrderInCartDevice(),
        OrderInCartAccessory(),
        RecommedProduct(),
        ButtonPaymentWidget(),
      ],
    );

    var appBarScaffold = AppBar(
      backgroundColor: AppBarColor,
      title: Text('Cart'),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios_outlined),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarScaffold,
      body: SingleChildScrollView(child: bodyScaffold),
    );
  }
}
