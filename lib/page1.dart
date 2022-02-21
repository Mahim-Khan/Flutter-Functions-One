
import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        // child: Text("Page 1"),
         child: Text("A Page",style: TextStyle(fontSize: 30),),

      ),
    );
    //   Container(
    //   //color: Colors.blue,
    //   child: Container(
    //     child:  Hero(
    //       tag: "add",
    //       child: Icon(
    //         Icons.add_a_photo,
    //         size: 250,color: Colors.yellow,
    //       ),
    //     ),
    //   ),
    // );
  }
}
