import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/category/add_category/component/add_category_body.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return AddCategoryBody();
  }
}
