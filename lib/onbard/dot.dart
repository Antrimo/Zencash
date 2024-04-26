import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zencash/onbard/page_one.dart';
import 'package:zencash/onbard/page_three.dart';
import 'package:zencash/onbard/page_two.dart';

class Dot extends StatefulWidget {
  const Dot({super.key});

  @override
  State<Dot> createState() => _DotState();
}

class _DotState extends State<Dot> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 950,
            child: PageView(
              controller: controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          Positioned(
            bottom: 220, // Adjust this value as needed
            left: 170,
            right: 0,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10,
                jumpScale: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
