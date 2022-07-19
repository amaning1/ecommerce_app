import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components.dart';
import '../constants.dart';
import '../controllers/products-provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final double itemHeight = (height - kToolbarHeight - 24) /2;
    final double itemWidth = width /2;
    final productProvider = Provider.of<ProductProvider>(context, listen: false);

    return  SafeArea(child: Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(width * 0.09),
        child: Column(
            children: <Widget>[
              productProvider.likedProducts.isNotEmpty?Expanded(
                child: GridView.builder(shrinkWrap : true,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (itemWidth/itemHeight), crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                    itemCount: productProvider.likedProducts.length,

                    itemBuilder: (context, index) {
                      return LikedProductsGrid(height: height,
                          width: width,
                          id: productProvider.products[index].id!,
                          imageLink: productProvider.products[index].image!,
                          name: productProvider.products[index].name!,
                          price: productProvider.products[index].price!,

                           );
                    }),
              ):const  Text('You have no liked Products', style: textStyle0),
            ]

        ),
      )


    ));
  }
}
