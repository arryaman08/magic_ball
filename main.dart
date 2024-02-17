import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ballpage(),
    ),
  ));
}

class ballpage extends StatefulWidget {
  const ballpage({super.key});

  @override
  State<ballpage> createState() {
    return _State();
  }
}

class _State extends State<ballpage> {
  int pic=1;
  @override
  Widget build(BuildContext context) {

    void change(){
       pic=Random().nextInt(5)+1;
        print(pic);
    }
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                    change();
                });
              },
              child: Image(
                image: AssetImage('images/ball$pic.png'),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
