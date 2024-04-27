import 'package:flutter/material.dart';
import 'package:zencash/Home/chat.dart';
import 'package:zencash/Home/home.dart';
import 'package:zencash/NavOps/records.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Analytics'),
    Records(),
    Text('Community'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home_outlined), 
            isSelected: _selectedIndex==0,
            selectedIcon: const Icon(Icons.home, color: Color.fromRGBO(85, 81, 255, 1),),
            onPressed: () { _onItemTapped(0); },),
            IconButton(icon: const Icon(Icons.analytics_outlined), 
            isSelected: _selectedIndex==1,
            selectedIcon: const Icon(Icons.analytics, color: Color.fromRGBO(85, 81, 255, 1),),
            onPressed: () { _onItemTapped(1); },),
            IconButton(icon: const Icon(Icons.book_outlined), 
            isSelected: _selectedIndex==2,
            selectedIcon: const Icon(Icons.book_rounded, color: Color.fromRGBO(85, 81, 255, 1),),
            onPressed: () { _onItemTapped(2); },),
            IconButton(icon: const Icon(Icons.groups_2_outlined), 
            isSelected: _selectedIndex==3,
            selectedIcon: const Icon(Icons.groups_2, color: Color.fromRGBO(85, 81, 255, 1),),
            onPressed: () { _onItemTapped(3); },),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chat()),
            );
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
