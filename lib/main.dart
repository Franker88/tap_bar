import "package:flutter/material.dart";
import "package:tab_bar/pages/contact.dart";
import "package:tab_bar/pages/home.dart";
import "package:tab_bar/pages/video.dart";

final scaKey = GlobalKey<_MyTabsState>();

void main() {
  runApp(MaterialApp(
    home: MyTabs(key: scaKey),
  ));
}

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});
  @override
  // ignore: library_private_types_in_public_api
    _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with TickerProviderStateMixin{
  late TabController controller;
  final myKey = GlobalKey<_MyTabsState>();

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: const Text("Tab Bar practice"),
        backgroundColor: Colors.purpleAccent,
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.ondemand_video_outlined),),
            Tab(icon: Icon(Icons.contacts_sharp),),
          ],
          
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          Home(),
          Video(),
          Contact(),
      ]),

    );
 }
}