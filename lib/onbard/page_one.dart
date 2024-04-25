import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
              // Child widgets
            ),
          ),
          Center(
            child: Container(
              child: Image.asset(
                "assets/home.png",
                height: 339,
                width: 339,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Positioned(
            top: 600,
            left: 50,
            child: Container(
              width: 300,
              height: 60,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 4, 63, 111),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  )),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
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
