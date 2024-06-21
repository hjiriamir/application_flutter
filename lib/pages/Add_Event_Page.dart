import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formKey=GlobalKey<FormState>();
  final confNameController =TextEditingController();
  final speakerNameController =TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    confNameController.dispose();
    speakerNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
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
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Tu dois completer le texte";
                  }
                  return null;
                },
                controller: confNameController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nom du speaker',
                    hintText: 'Entrer le nom du speker',
                    border: OutlineInputBorder()
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Tu dois completer le texte";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
            ),


            DropdownButtonFormField(
                items: [
                  DropdownMenuItem(value:'talk', child:Text('Talk show')),
                  DropdownMenuItem(value:'demo', child:Text('demo de code')),
                  DropdownMenuItem(value:'partner', child:Text('Partner')),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: 'talk',
                onChanged: (value){}
            ),
            SizedBox(

              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      final confName=confNameController.text;
                      final speakerName=speakerNameController.text;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar (content: Text("Envoi en cours..."))
                        );
                        FocusScope.of(context).requestFocus(FocusNode());//fermer le clavier au moment du click sur le boutton envoyer
                    print("Ajout du conference $confName par le speaker $speakerName");
                    }
                  },
                  child: Text("Envoyer")
              ),
            )
          ],
        ),
      ),
    );
  }
}
