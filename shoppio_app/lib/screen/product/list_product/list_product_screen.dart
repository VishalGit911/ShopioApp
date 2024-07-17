import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/product/list_product/component/list_product_body.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  @override
  Widget build(BuildContext context) {
    return ListProductBody();
  }
}
