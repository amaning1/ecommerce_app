import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components.dart';
import '../constants.dart';
import '../controllers/products-provider.dart';

class LikedProductsPage extends StatefulWidget {
  const LikedProductsPage({Key? key}) : super(key: key);

  @override
  State<LikedProductsPage> createState() => _LikedProductsPageState();
}

class _LikedProductsPageState extends State<LikedProductsPage> {


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
                          id: productProvider.likedProducts[index].id!,
                          imageLink: productProvider.likedProducts[index].image!,
                          name: productProvider.likedProducts[index].name!,
                          price: productProvider.likedProducts[index].price!,

                        );
                      }),
                ):const  Text('You have no liked Products', style: textStyle0),
              ]

          ),
        )


    ));
  }
}
