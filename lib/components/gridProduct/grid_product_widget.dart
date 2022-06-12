import 'package:flutter/material.dart';
import 'package:flutter_components/components/gridProduct/card_product_grid_component.dart';
import 'package:flutter_components/detail_screen.dart';
import 'package:flutter_components/models/product.dart';

class GridProductWidget extends StatelessWidget {
  final double? padding;
  const GridProductWidget({
    Key? key,
    this.padding = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: padding!),
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: padding!,
            mainAxisSpacing: padding!,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return CardProductGridComponent(
              product: products[index],
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(product: products[index]),
                  ),
                ),
              },
            );
          },
        ),
      ),
    );
  }
}
