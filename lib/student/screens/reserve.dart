import 'package:flutter/material.dart';



class Reserve extends StatefulWidget {
  const Reserve({ Key? key }) : super(key: key);

  @override
  State<Reserve> createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 77, 197, 189),
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 114, 208, 119),
        title: Center(
          child: Text('الحجوزات'),
        ),
        
      ),
    );
      
    
  }
}