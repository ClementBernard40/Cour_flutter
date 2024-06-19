import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(58),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Liste"),
            SizedBox(
              height: 200,
              child: ListView(
                children: const [
                  Text('test'),
                  Text('test'),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Clement Bernard'),
                    subtitle: Text('87 avenue andré morizet'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail_outline),
                    title: Text('c.bernard817@laposte.net'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('06 85 33 17 31'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListImage("deagle.png"),
                  ListImage("m4.png"),
                  ListImage("ak.png"),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  ListImage("deagle.png"),
                  ListImage("m4.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                  ListImage("ak.png"),
                ],
              ),
            ),
            const Wrap(spacing: 5, children: [
              Chip(label: Text("Bruxelle")),
              Chip(label: Text("Belgique")),
              Chip(label: Text("blabla")),
            ]),
          ],
        ));
  }

  Container ListImage(String imageName) {
    return Container(
        margin: const EdgeInsets.only(right: 12),
        child: Image.asset(imageName));
  }
}
