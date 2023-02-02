import 'package:flutter/material.dart';
//import '../utils/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:idelivery_app/src/screens/sender_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Hoorah!')),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.call_made,
                  color: Colors.deepPurple,
                )),
                Tab(
                    icon: Icon(
                  Icons.call_received,
                  color: Colors.red,
                )),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SenderScreen(),
                  Container(
                    child: Center(child: Text('Reciever')),
                  )
                ],
              ),
            )
            //pseudoAppBar()
          ],
        ),
      ),
    );
  }
}
