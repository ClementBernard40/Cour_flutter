import 'package:flutter/material.dart';





class ImageStack extends StatelessWidget {
  final String imageName;
  final String text;


  const ImageStack({
    super.key,
    required this.imageName,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue),
            image: DecorationImage(
              image: AssetImage(imageName),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
    
        Positioned(
        right: 1,
          
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Icon(Icons.favorite,color: Colors.red),
          
        )
        ),
    
        ),
    
        Positioned(
        left: 50,
          
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(text),
        )
        ),
    
        ),
    
      ],
    );
  }
}