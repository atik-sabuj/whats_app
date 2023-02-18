import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
        title: Text('WhatsApp'),
        bottom: TabBar(
          tabs: [
          Text('Chats'),
          Text('Status'),
          Text('Call'),
         ]
        ),
      ),
/*          body: TabBarView(
            children: [
              Text('1'),
              Text('1'),
              Text('1'),
            ],
          ),*/
        ),
    );
  }
}
