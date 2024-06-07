import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق صورة'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("حاول مرة اخرى",
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,

        ),
        ),
        Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("images/image-1.png"),
            ),
              
              ),
             Expanded(child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Image.asset("images/image-1.png"),
             ),
              
              ),
              
             
          ],
        )
        ],
    );
  }
}
