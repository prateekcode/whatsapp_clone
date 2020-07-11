import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Color/colors.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<String> userPic = [
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/4397899/pexels-photo-4397899.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3576112/pexels-photo-3576112.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  List<String> userName = [
    "Prateek",
    "Sujit",
    "Pallavi",
    "Tejas",
    "Anurag",
    "Nimesh",
    "Vinay",
    "Vicky",
    "Anupam"
  ];

  List<String> chatMessage = [
    "16 minutes ago",
    "40 minutes ago",
    "45 minutes ago",
    "55 minutes ago",
    "Today, 13:41",
    "Today, 10:20",
    "Today, 11:25",
    "Today, 09:12",
    "Today, 07:04",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_alt),
          backgroundColor: greenAccentColor,
          onPressed: null),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10)),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                radius: 27),
            title: Text('My Status', style: TextStyle(fontSize: 19)),
            subtitle: Text('Tap to add status update',
                style: TextStyle(fontSize: 16)),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 15)),
              Text(
                'Recent updates',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Expanded(
              child: ListView.builder(
                  itemCount: userName.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundColor: lightGreenColor,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(userPic[index]),
                              radius: 27),
                          radius: 30),
                      title:
                          Text(userName[index], style: TextStyle(fontSize: 19)),
                      subtitle: Text(chatMessage[index],
                          style: TextStyle(fontSize: 16)),
                    );
                  }))
        ],
      ),
    );
  }
}
