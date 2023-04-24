import "package:flutter/material.dart";
import "package:tab_bar/main.dart";
import "package:tab_bar/pages/home.dart";

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.ondemand_video_rounded,size: 200.0,color: Colors.blueGrey,),
        Text("Video"),
      ],
    );
 }
}
