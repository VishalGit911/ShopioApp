import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/category/list_category/component/list_category_body.dart';

class ListCategoryScreen extends StatefulWidget {
  const ListCategoryScreen({super.key});

  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListCategoryBody();
  }
}
