import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Color/colors.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: greenAccentColor,
        child: Icon(Icons.chat),
      ),
      body: ChatListView(),
    );
  }
}

class ChatListView extends StatefulWidget {
  @override
  _ChatListViewState createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
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
    "This is the message",
    "Yes, I'm working on Project",
    "So, when we're going on date?",
    "Work faster bro",
    "Aur be kya ho rha?",
    "Kya Sir aapka kuch pta ni chl rha",
    "I'm fucking for you",
    "Aur agent bro", 
    "Pgalao Tm"
  ];

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
    //"https://images.pexels.com/photos/4050888/pexels-photo-4050888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];

  List<String> chatTime = [
    "14:31",
    "10:25",
    "22:25",
    "18:12",
    "16:28",
    "19:20",
    "21:11",
    "12:12",
    "14:15"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userName.length,
        itemBuilder: (context, index){
          return GestureDetector(
            child: Container(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(userPic[index]), radius: 27),
                title: Text(userName[index], style: TextStyle(fontSize: 21)),
                subtitle: Text(chatMessage[index], style: TextStyle(fontSize: 15)),
                trailing: Text(chatTime[index], style: TextStyle(fontSize: 10)),
              ),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300])),
              ),
            ),
          );
        }
        )
    );
  }
}
