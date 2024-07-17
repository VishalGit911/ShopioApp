import 'package:flutter/material.dart';
import 'package:shoppio_app/route/project_route.dart';

class ListCategoryBody extends StatefulWidget {
  const ListCategoryBody({super.key});

  @override
  State<ListCategoryBody> createState() => _ListCategoryBodyState();
}

class _ListCategoryBodyState extends State<ListCategoryBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue.shade800,
        title: Text(
          "CATEGORY",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
        ),
      ),
      backgroundColor: Colors.white,
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
                title: Text("Electronics"),
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
          Navigator.pushNamed(context, AppRoute.addcategory);
        },
      ),
    );
  }
}
