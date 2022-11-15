import 'package:cartpayment_test/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonPaymentWidget extends StatefulWidget {
  const ButtonPaymentWidget({super.key});

  @override
  State<ButtonPaymentWidget> createState() => _ButtonPaymentWidget();
}

class _ButtonPaymentWidget extends State<ButtonPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    void onPressedPayment() {
      setState(() {
        print('Payment');
      });
    }

    var btn = Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: onPressedPayment,
          // child: Padding(
          //     padding: EdgeInsets.all(16), child: Text("Mark Payment"))
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(ElevatedButtonIcon),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
          child: const Text(
            "Mark Payment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );

    return btn;
  }
}
