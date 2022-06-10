import 'package:flutter/material.dart';
import 'package:flutter_components/components/gridProduct/card_product_grid_component.dart';
import 'package:flutter_components/constants.dart';
import 'package:flutter_components/detail_screen.dart';
import 'package:flutter_components/product.dart';

class GridProductWidget extends StatelessWidget {
  const GridProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding,
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
