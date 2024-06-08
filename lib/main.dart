import 'package:flutter/material.dart';
import 'dart:math';

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

//stful
// ignore: must_be_immutable
class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? "تمت المطابقة مبروك 🥳"
              : "حاول مرة اخرى",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset("images/image-$leftImageNumber.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                       changeImage();
                      });
                    },
                    child: Image.asset("images/image-$rightImageNumber.png")),
              ),
            ],
          ),
        )
      ],
    );
  }
}

/*class ImagePage extends StatelessWidget {
  const ImagePage({super.key});
  int leftImageNumber = 4;

  @override
  Widget build(BuildContext context) {
    

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "حاول مرة اخرى",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print("Button 1");
                  },
                  child: Image.asset("images/image-$leftImageNumber.png"),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      print("Button 2");
                    },
                    child: Image.asset("images/image-1.png")),
              ),
            ],
          ),
        )
      ],
    );
  }
}*/
