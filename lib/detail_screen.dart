import 'package:flutter/material.dart';
import 'package:flutter_components/models/product.dart';


class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
