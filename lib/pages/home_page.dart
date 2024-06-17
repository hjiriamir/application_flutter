import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'event_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynconf 2024"),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SvgPicture.asset("assets/images/logoo.svg",
              color: Colors.blue,
              placeholderBuilder: (BuildContext context) => CircularProgressIndicator(),
            ),
            const Text(
              "Asynconf 2024",
              style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
              ),
            ),
            Text("Salon viruel de l'informatique. Du 20 au 22 Juin 2024",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: (){
                Navigator.push(context,
                    PageRouteBuilder(
                        pageBuilder:(_, __, ___)=>EventPage()
                    )
                );
              },
              label: Text("Afficher le Planning",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: Icon(Icons.calendar_month),
            )
          ],
        ),
      ),
    );
  }
}
