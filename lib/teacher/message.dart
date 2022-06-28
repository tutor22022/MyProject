import 'package:flutter/material.dart';



class Message extends StatefulWidget {
  const Message({ Key? key }) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 77, 197, 189),
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 208, 119),
        title: Center(
          child: Text('المحادثات'),
        ),
        
      ),
    );
  }
}