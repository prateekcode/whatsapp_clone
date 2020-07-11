import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Color/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Choice _selectedChoice = choices[0];
  void _select(Choice choice){
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: primaryColor,
            bottom: TabBar(
              isScrollable: false,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt, size: 22,), iconMargin: EdgeInsets.zero,),
                Tab(text: 'CHATS',),
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS'),
              ],
              indicatorColor: whiteLightColor,
              ),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search, color: whiteLightColor), onPressed: null),
              PopupMenuButton(
                onSelected: _select,
                itemBuilder: (BuildContext context){
                  return choices.map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: Text(choice.title));
                  }).toList();
              })
            ],  
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ]),
        ),
      ),
    );
  }
}



class Choice{
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'New group'),
  const Choice(title: 'New broadcast'),
  const Choice(title: 'WhatsApp web'),
  const Choice(title: 'Starred messages'),
  const Choice(title: 'Settings'),
];
