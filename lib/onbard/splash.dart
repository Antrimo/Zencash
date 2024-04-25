import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(85, 81, 255, 1),
          // appBar: AppBar(
          //   title: const Center(
          //       child: Text(
          //     "Zen Cash",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 28,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: "Cursive",
          //     ),
          //   )),
          //   backgroundColor: Colors.grey,
          // ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/folder.png"),
              const SizedBox(width: 10),
              Container(
                child: const Center(
                  child: Text(
                    "ZENCASH",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Bebas Neue",
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
