import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Color/colors.dart';
import 'package:whatsapp_clone/Pages/chats.dart';
import 'package:whatsapp_clone/Pages/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget appBarTitle = Text('WhatsApp');
  Icon actionIcon = Icon(Icons.search, color: whiteLightColor);

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
            title: appBarTitle,
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
              IconButton(
                icon: actionIcon,
                onPressed:(){
                  setState(() {
                    if (this.actionIcon.icon == Icons.search){
                      this.actionIcon = Icon(Icons.close,color: whiteLightColor);
                      this.appBarTitle = TextField(
                        style: TextStyle(
                          color: whiteLightColor,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(color: whiteLightColor),
                          focusColor: whiteDarkColor,
                        )
                      );
                    }else{
                      this.actionIcon = Icon(Icons.search);
                      this.appBarTitle = Text("WhatsApp");
                    }
                  });
                } ),
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
              Chats(),
              Status(),
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
