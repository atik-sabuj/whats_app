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
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10,),
            PopupMenuButton(
                icon: Icon(Icons.more_horiz_outlined),
                itemBuilder: (context,) => const[
                  PopupMenuItem(
                    value: 1,
                      child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Log Out'),
                  ),
                ]
            ),
            SizedBox(width: 10,),
          ],
        ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                        NetworkImage('https://render.fineartamerica.com/images/rendered/square-dynamic/small/images/artworkimages/mediumlarge/2/roger-moore-roy-jones.jpg'),
                      ),
                      title : Text('James Bond'),
                      subtitle: Text('Whats up bro?'),
                      trailing: Text('01:32 AM'),
                      );
                     }
                  ),
              Text('Status'),
              Text('Call'),
            ],
          ),
      ),
    );
  }
}
