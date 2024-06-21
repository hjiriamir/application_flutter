import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom Conference',
                  hintText: 'Entrer le nom du conference',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            SizedBox(

              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Envoyer")
              ),
            )
          ],
        ),
      ),
    );
  }
}
