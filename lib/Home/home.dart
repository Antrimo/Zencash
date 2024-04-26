import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,

        title: Row(
          children: [
            SizedBox(
                height: 30, width: 30,
                child: Image.asset('assets/topimg.png',fit: BoxFit.fill,),
              ),
            const SizedBox(width: 5,),
            const Text('ZENCASH', 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle the notification icon press
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Handle the profile icon press
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Color.fromRGBO(199, 198, 255, 0.612)])
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Know your Money Personality\nand Zenscore'),
                    const SizedBox(height: 5,),
                    SizedBox(height: 28, width: 100,
                      child: ElevatedButton(onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(85, 81, 255, 1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                        ),
                        child: const Text('Take Quiz', 
                          textScaler: TextScaler.linear(0.80), 
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, ),),),
                    )
                  ],
                ),
              
                SizedBox(height: 150, width: 150,
                  child: Image.asset('assets/home.png'))
              ],),
            ),
          ),

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              whitebutton('Categories'),
              whitebutton('All Transations'),
            ],
          )

        ],
      ),
    );
  }
}


Widget whitebutton(String label)
{
  return Container(height: 40, width: 168,
    decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(85, 81, 255, 1), width: 1),

      borderRadius: BorderRadius.circular(5),
    ),
    child: ElevatedButton(onPressed: (){}, 
    style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 219, 219, 252),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
      ),
      child: Text(label, 
        textScaler: TextScaler.linear(0.70), 
        maxLines: 1,
        style: TextStyle(color: Colors.black, 
          fontWeight: FontWeight.w300,
          fontSize: 20,

        ),),),
  );
}