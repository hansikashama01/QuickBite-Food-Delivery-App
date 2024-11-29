import 'package:flutter/material.dart';
import 'package:quickbite/comonents/my_sliver_app_bar.dart';

import '../comonents/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: MyDrawer(),
     
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MysliverAppBar(
            child: Text('Hellow'),
            
            title: Text("title"),
          )
        ],
        body: Container(color: Colors.blue,),
      ),
      
    );
  }
}