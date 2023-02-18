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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('WhatsApp'),
          bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
          ]),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 10,),
            Icon(Icons.more_horiz_outlined),
            SizedBox(width: 10,),
          ],
        ),
          body: TabBarView(
            children: [
              Text('Camera'),
              Text('Chats'),
              Text('Status'),
              Text('Call'),
            ],
          ),
      ),
    );
  }
}
