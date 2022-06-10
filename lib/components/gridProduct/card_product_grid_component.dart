import 'package:flutter/material.dart';
import 'package:flutter_components/constants.dart';
import 'package:flutter_components/product.dart';


class CardProductGridComponent extends StatelessWidget {
  final Product product;
  final VoidCallback onPressed;
  const CardProductGridComponent({
    Key? key,
    required this.product,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    color: kTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
