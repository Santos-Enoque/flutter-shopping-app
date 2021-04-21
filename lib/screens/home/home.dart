import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:untitled/constants/asset_paths.dart';
import 'package:untitled/widgets/custom_btn.dart';
import 'package:untitled/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: CustomText(text:"Sneex", size: 24, weight: FontWeight.bold,),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){
            showBarModalBottomSheet(
              context: context,
              builder: (context) => Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        SizedBox(height: 10,),
                        Center(child: CustomText(text:"Shopping Cart", size: 24, weight: FontWeight.bold,),),
                        SizedBox(height: 5,),
                        Column(
                          children: <String>[
                            image1,
                            image2,
                            image3,
                            image4,
                          ].map((image) => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(image, width: 80,),
                              ),

                              Expanded(child: Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Center(child: CustomText(text: "White Shoe",)),
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(icon: Icon(Icons.chevron_left), onPressed: (){}),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomText(text: "2",),
                                      ),
                                      IconButton(icon: Icon(Icons.chevron_right), onPressed: (){}),
                                    ],)
                                ],
                              )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(icon: Icon(Icons.delete), onPressed: (){}),
                              ),
                            ],
                          )).toList(),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 30,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(8),
                          child:                             CustomButton(text: "Purchase", onTap: (){}),
                        ))
                  ],
                ),
              ),
            );
          })
        ],
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white30,
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: .63,
            padding: const EdgeInsets.all(10),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 10,
            children: <String>[
              image1,
              image2,
              image3,
              image4,
              image5,
              image6,
            ].map((String image) {
              return  Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      offset: Offset(3, 2),
                      blurRadius: 7
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(image, width: double.infinity,)),
                    ),
                    CustomText(text: "White Shoes", size: 18, weight: FontWeight.bold,),
                    CustomText(text: "Nike", color: Colors.grey,),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CustomText(text:"\$18.0", size: 22, weight: FontWeight.bold,),
                        ),
                        SizedBox(width: 30,),
                        IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: (){})
                      ],
                    ),
                  ],
                ),
              );
            }).toList()),
      )
    );
  }
}
