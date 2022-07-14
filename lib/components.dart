import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';


class ProductsGrid extends StatelessWidget {
   const ProductsGrid({Key? key, this.height, this.width, required this.imageLink, required this.name, required this.price}) : super(key: key);


  final height;
  final width;
  final String imageLink;
  final String name;
  final int price;


  @override
  Widget build(BuildContext context) {
    return
    Container(
       height : 100,
      // width: width * 0.4,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 3,
          offset: const Offset(0, 4),
        ),
      ],),
      child: Padding(
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
          children: [
            //image
            Image.network(imageLink,
                height: height * 0.2, width: width * 0.4),
             SizedBox(height: height * 0.02),
             Text(name, style: textStyle0,),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text('GHS$price', style: textStyle0,),
                  const Icon(Icons.favorite_border),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
