import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zencash/auth/register.dart';
import 'package:zencash/onbard/page_three.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 400,
              color: const Color.fromRGBO(242, 242, 248, 1),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/hom1.png",
                    height: 339,
                    width: 339,
                  ),
                ),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        "Unlock potential,",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "one budget at a time",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page3(),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(52, 51, 56, 0.494),
                          blurRadius: 10,
                          offset: Offset(0, 7),
                        ),
                      ],
                      color: Color.fromRGBO(85, 81, 255, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      // color: Color.fromRGBO(4, 63, 111, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
