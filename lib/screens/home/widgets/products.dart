import 'package:flutter/material.dart';
import 'package:untitled/constants/asset_paths.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/screens/home/widgets/single_product.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .63,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: <ProductModel>[
         ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image1
         ),ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image2
         ),ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image3
         ),ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image4
         ),ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image5
         ),ProductModel(
           name: "White Shoes",
           brand: "Nike",
           price: "12.0",
           image: image6
         ),
        ].map((ProductModel product) {
          return SingleProductWidget(product: product,);
        }).toList());
  }
}
