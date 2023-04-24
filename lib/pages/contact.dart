import "package:flutter/material.dart";

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.contacts_sharp,size: 200.0,color: Colors.blueGrey,),
        Text("Contact"),
      ],
    );
 }
}