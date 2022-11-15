// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cartpayment_test/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List _order = ['order1'];

final List _Card = [
  'card1',
  'card2',
  'card3',
];

class RecommedProduct extends StatefulWidget {
  const RecommedProduct({super.key});

  @override
  State<RecommedProduct> createState() => _RecommedProductState();
}

class _RecommedProductState extends State<RecommedProduct> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                'Recommended Product',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 230.0,
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/power-adapter2.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        '20 USB-C Power Adapter',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 790'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/MM0A3.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'สายชาร์จ Apple Lightning 3 เมตร',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 790'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    SmoothPageIndicator(
                        controller: controller,
                        count: _Card.length,
                        effect: SlideEffect(
                            dotWidth: MediaQuery.of(context).size.width /
                                _Card.length,
                            dotHeight: 10,
                            spacing: 0,
                            radius: 0,
                            activeDotColor: Colors.green,
                            dotColor: Colors.grey)),
                  ],
                ),
              ),
              Card(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    // StepProgressIndicator(
                    //   totalSteps: 100,
                    //   currentStep: 50,
                    //   size: 4,
                    //   padding: 0,
                    //   selectedColor: notseletedColor,
                    //   unselectedColor: ElevatedButtonIcon,
                    //   roundedEdges: Radius.circular(10),
                    // ),
                    SmoothPageIndicator(
                        controller: controller,
                        count: _Card.length,
                        effect: SlideEffect(
                            dotWidth: MediaQuery.of(context).size.width /
                                _Card.length,
                            dotHeight: 10,
                            spacing: 0,
                            radius: 0,
                            activeDotColor: Colors.green,
                            dotColor: Colors.grey)),
                  ],
                ),
              ),
              Card(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: BorderColorsmall,
                        ),
                        child: Image.asset(
                          'assets/images/Apple_AirTag.svg.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        'AirTag(1 Pack)',
                        style: TextStyle(
                            color: ElevatedButtonIcon,
                            decoration: TextDecoration.underline),
                      ),
                      subtitle: Text('ราคา ฿ 990'),
                    ),
                    // StepProgressIndicator(
                    //   totalSteps: 100,
                    //   currentStep: 50,
                    //   size: 4,
                    //   padding: 0,
                    //   selectedColor: notseletedColor,
                    //   unselectedColor: ElevatedButtonIcon,
                    //   roundedEdges: Radius.circular(10),
                    // ),
                    SmoothPageIndicator(
                        controller: controller,
                        count: _Card.length,
                        effect: SlideEffect(
                            dotWidth: MediaQuery.of(context).size.width /
                                _Card.length,
                            dotHeight: 10,
                            spacing: 0,
                            radius: 0,
                            activeDotColor: Colors.green,
                            dotColor: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
