import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback ? zz;
  Result(this.zz);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [ Text("Done!",style: TextStyle(fontSize: 30),),
          MaterialButton(onPressed:zz,child: Text("Reset App",style:TextStyle(fontSize: 25) ,),)
        ],
      ),

    );
  }
}
