import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("status"),
              ),
              Tab(
                child: Text("calls"),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                itemBuilder: (
              context,
            ) =>
                    [
                      PopupMenuItem(child: Text("New Group")),
                      PopupMenuItem(child: Text("Setting")),
                      PopupMenuItem(child: Text("Logout")),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text("camera"),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    title: Text("John Wick"),
                    subtitle: Text("Where is my dog"),
                    trailing: Text("3:00 PM"),
                  );
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    title: Text("John Wick"),
                    subtitle: Text("Where is my dog"),
                    trailing: Text("3:00 PM"),
                  );
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                    title: Text("John Wick"),
                    subtitle: Text("Where is my dog"),
                    trailing: Text("3:00 PM"),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
