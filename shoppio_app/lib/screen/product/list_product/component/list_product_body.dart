import 'package:flutter/material.dart';

import '../../../../route/project_route.dart';

class ListProductBody extends StatefulWidget {
  const ListProductBody({super.key});

  @override
  State<ListProductBody> createState() => _ListProductBodyState();
}

class _ListProductBodyState extends State<ListProductBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: Colors.blue.shade800,
          title: Text(
            "PRODUCT",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                    child: Icon(Icons.add),
                    radius: 25,
                  ),
                  title: Text("Refrigerator"),
                  subtitle: Text("Electonics "),
                  trailing:
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue.shade800,
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.addproduct);
          },
        ));
  }
}
