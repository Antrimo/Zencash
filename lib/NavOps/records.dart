import 'package:flutter/material.dart';
import 'package:zencash/NavOps/bucket.dart';
import 'package:zencash/NavOps/trades.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Records'),
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
          bottom: const TabBar(
                labelPadding: EdgeInsets.all(3),
                indicatorColor: Color.fromRGBO(85, 81, 255, 1),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3.0,
                labelColor: Color.fromRGBO(85, 81, 255, 1),
                tabs: [
                  Tab(
                    text: "Trades",
                  ),
                  Tab(
                    text: "Bucket List",
                  ),
                ],
              ),
        ),
        body: const TabBarView(
            children: [
              Trades(),
              BucketList(),
            ],
          )
        
      ),
    );
  }
}