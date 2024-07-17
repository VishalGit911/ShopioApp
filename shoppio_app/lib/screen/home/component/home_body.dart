import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/home/component/drawer_home.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade800,
        title: Text("Shoppio"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: DrawerHome(),
    );
  }
}
