import 'package:flutter/material.dart';
import 'package:zencash/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Business'),
    Text('School'),
    Text('Settings'),
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
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home), 
            // isSelected: true,
            onPressed: () { _onItemTapped(0); },),
            IconButton(icon: const Icon(Icons.business), onPressed: () { _onItemTapped(1); },),
            IconButton(icon: const Icon(Icons.school), onPressed: () { _onItemTapped(2); },),
            IconButton(icon: const Icon(Icons.settings), onPressed: () { _onItemTapped(3); },),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the + button press
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
