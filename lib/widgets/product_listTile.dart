import 'package:flutter/material.dart';
import 'package:untitled/constants/asset_paths.dart';

import 'custom_text.dart';

class ProductListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image1, width: 140,),
          ),
          Wrap(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CustomText(text:"White Shoes", size: 18,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    CustomText(text:"Nike", color: Colors.grey,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text:"\$18.0", size: 20, weight: FontWeight.bold,),
                    SizedBox(width: 100,),
                    IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}
