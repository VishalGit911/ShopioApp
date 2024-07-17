import 'package:flutter/material.dart';

class AddCategoryBody extends StatefulWidget {
  const AddCategoryBody({super.key});

  @override
  State<AddCategoryBody> createState() => _AddCategoryBodyState();
}

class _AddCategoryBodyState extends State<AddCategoryBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Category",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        labelText: "Description",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 50),
                        backgroundColor: Colors.blue.shade800,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Add Category",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
