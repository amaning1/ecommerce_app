import 'package:ecommerce/components.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';

import '../models/products.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController search = TextEditingController();
  List<Products> products= [
    Products('Black Tee','1','https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/black-tee.jpg?alt=media&token=15a638e2-4e0a-4e9e-9aa6-b132068f3a92',10,false),
    Products('Blue Tee','2','https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/blue-tee.jpg?alt=media&token=00f60c37-0c26-4b57-90f1-16539c09ffd9',10,false),
    Products('Brown Tee','3','https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/brown-tee.jpg?alt=media&token=53cf67e1-dd2b-4784-b5ec-f499f9e62ed0',10, false),
    Products('Grey Tee','4','https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/grey-tee.jpg?alt=media&token=4db1567a-55b4-41e4-a58b-2af0bfba3aa3',10, false),
    Products('White Tee','5','https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/white-tee.jpg?alt=media&token=8663c69f-c69c-408b-ae46-5949a9c092c2',10, false),

  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final double itemHeight = (height - kToolbarHeight - 24) /2;
    final double itemWidth = width /2;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(width * 0.09),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  child: const Icon(Icons.arrow_back),
                ),
                //SizedBox(width: width * 0.161),
                const Text(
                  'Search Product',
                  style: TextStyle(fontSize: 15,
                      fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                ),
                // SizedBox(width: width * 0.161),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                        icon: const Icon(Icons.person), onPressed: () {})),
              ],
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: width * 0.65,
                  child: Textfield0(
                    controller: search,
                    icon: const Icon(Icons.search),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.legend_toggle, color: Colors.black),
                    onPressed: () {},
                  ),
                )
              ],
            ),
           SizedBox(height: height * 0.02),
           Expanded(
             child: GridView.builder(shrinkWrap : true,
                 gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (itemWidth/itemHeight), crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                 itemCount: products.length,

                 itemBuilder: (context, index) {
               return ProductsGrid(height: height, width: width, imageLink: products[index].image!, name: products[index].name!, price: products[index].price!);
             }),
           )
          ]),
        ),
      ),
    );
  }
}
