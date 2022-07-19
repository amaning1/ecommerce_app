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
      appBar: AppBar(),
        body: Padding(
          padding:  EdgeInsets.all(width * 0.09),
          child: Column(
              children: <Widget>[
                productProvider.cartProducts.isNotEmpty?Column(
                  children: [
                    Expanded(
                      child: GridView.builder(shrinkWrap : true,
                          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: (itemWidth/itemHeight), crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                          itemCount: productProvider.cartProducts.length,

                          itemBuilder: (context, index) {
                            return LikedProductsGrid(height: height,
                              width: width,
                              id: productProvider.cartProducts[index].id!,
                              imageLink: productProvider.cartProducts[index].image!,
                              name: productProvider.cartProducts[index].name!,
                              price: productProvider.cartProducts[index].price!,

                            );
                          }),
                    ),
                    ElevatedButton(onPressed: () {  }, child: const Text('Proceed to Checkout', style: textStyle0),)
                  ],
                ):const  Text('You have nothing in your cart', style: textStyle0),
              ]

          ),
        )


    ));
  }
}




