import 'package:flutter/material.dart';
import 'package:apptest/data.dart'; // Assurez-vous que vous importez correctement le fichier data.dart

class BruxelleScreen extends StatelessWidget {
  const BruxelleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Bruxelle'),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.abc_outlined),
                  title: Text(items[index]),
                );
              },
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: values.length,
              itemBuilder: (BuildContext context, int index) {
                final Map item = values[index];

                return ListTile(
                  leading: Image.asset(item['img']),
                  title: Text(item['name']),
                  subtitle: Text(item['description']),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
