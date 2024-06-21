import 'package:amir_app/pages/Add_Event_Page.dart';
import 'package:amir_app/pages/event_page.dart';
import 'package:amir_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _curretIndex=0;
  setCurrentIndex(int index){
    setState(() {
      _curretIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar :AppBar(
          title : [
            Text("Acceuil"),
            Text("List des formulaires"),
            Text("Ajout d'un Evenement"),
          ][_curretIndex],
        ),
        body: [
          HomePage(),
          EventPage(),
          Add_Event_Page(),
        ][_curretIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _curretIndex,
          onTap: (index)=>setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 32,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Planning',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Ajout',
            )
          ],
        ) ,
      ),
    );
}

}
