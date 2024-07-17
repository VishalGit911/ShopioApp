import 'package:flutter/material.dart';
import 'package:shoppio_app/screen/product/add_product/component/add_product_body.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return AddProductBody();
  }
}
