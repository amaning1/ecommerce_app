import 'package:ecommerce/components.dart';
import 'package:ecommerce/controllers/products-provider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  TextEditingController search = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final double itemHeight = (height - kToolbarHeight - 24) /2;
    final double itemWidth = width /2;
    final productProvider = Provider.of<ProductProvider>(context, listen: false);

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
                    icon: const Icon(Icons.shopping_cart, color: Colors.black),
                    onPressed: () {Navigator.pushNamed(context, 'cartPage');},
                  ),
                )
              ],
            ),
           SizedBox(height: height * 0.02),
           Expanded(
             child: GridView.builder(shrinkWrap : true,
                 gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (itemWidth/itemHeight), crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                 itemCount: productProvider.products.length,

                 itemBuilder: (context, index) {
               return ProductsGrid(height: height,
                 width: width,
                 imageLink: productProvider.products[index].image!,
                 name: productProvider.products[index].name!,
                 price: productProvider.products[index].price!,
                 isLiked: false );
             }),
           )
          ]),
        ),
      ),
    );
  }
}
