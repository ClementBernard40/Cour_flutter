import 'package:flutter/material.dart';
import '../component/ImageStack.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: const EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Home"),
          const Text("Home"),
          const Text("Home"),
          const Text("Home"),
          const SizedBox(height: 30,),
          const Row(
            children: <Widget>[
              Icon(Icons.person),
              SizedBox(width: 50,),
              Column(
                children: [
                  Text('Ouais oausi oauis'),
                  Text('dxcfvhbjknlhg'),

                ],
              ),

            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              Image.asset("ak.png"),
              Image.asset("deagle.png"),
            ],
          ),

          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('bayonette.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
              ),
              SizedBox(width: 30,),
              CircleAvatar(
                backgroundImage: AssetImage('deagle.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
              ), 
              SizedBox(width: 30,),
              CircleAvatar(
                backgroundImage: AssetImage('m4.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
              ),
            ],
          ),

          const ImageStack(imageName: "awp.jpg",text: "AWP Prince"),
          const ImageStack(imageName: "deagle.png", text: "Desert Eagle Toile pourpre")

        ],

      )
    );
  }
}

