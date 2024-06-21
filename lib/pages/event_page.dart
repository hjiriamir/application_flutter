import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final events=[
    {
      "speaker":"amir",
      "date":"13h a 13h30",
      "subject":"le code de legacy",
      "avatar":"damien"
    },
    {
      "speaker":"hjiri",
      "date":"15h a 15h30",
      "subject":"le code ",
      "avatar":"lior"
    },
    {
      "speaker":"esprit",
      "date":"10h a 10h30",
      "subject":"legacy",
      "avatar":"defendintelligence"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context,index){
          final event =events[index];
          final avatar =event['avatar'];
          final speaker =event['speaker'];
          final date = event['date'];
          return  Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.jpg"),
              title: Text('$speaker'),
              subtitle: Text('$date'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },


      ),
    );
  }
}
