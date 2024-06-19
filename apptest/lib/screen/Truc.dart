import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../Style.dart';


class TrucScreen extends StatelessWidget {
  const TrucScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("fsdfvdvdf", style: h1,),
          const Text(
            "Truc",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Poppins",
              color: Colors.amber,
              backgroundColor: Colors.black12,
            ),
          ),
          const SizedBox(height: 20), // Ajout d'un espacement entre le texte et le Markdown

          // Utilisation du widget Markdown pour afficher du contenu Markdown
          const MarkdownBody(
            data:
                """# Bonjour tout le monde \n


- liste
- liste
- liste""",
          ),
          const SizedBox(height: 30,),

          // Bouton pour ouvrir le portefeuille
          ElevatedButton(
            onPressed: () async {
              const url = 'https://portfolio-virid-ten-42.vercel.app/';
              if (await canLaunchUrlString(url)) {
                await launchUrlString(url); // Modification ici
              } else {
                throw 'Impossible de lancer $url';
              }
            },
            child: const Text('Ouvrir mon portefolio'),
          ),
        ],
      ),
    );
  }
}
