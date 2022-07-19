import 'package:ecommerce/constants.dart';
import 'package:ecommerce/controllers/products-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ProductsGrid extends StatefulWidget {
    ProductsGrid({Key? key, this.onPressed, this.height, this.width, required this.imageLink, required this.name, required this.price, this.icon, required this.id}) : super(key: key);


  final height;
  final width;
  final String imageLink;
  final String name;
  final int price;
  final String id;
  var onPressed;
  var icon;

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

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
        padding: EdgeInsets.fromLTRB(widget.width * 0.03,widget.width * 0.03,widget.width * 0.03,widget.width * 0.03),
        child: Column(
          children: [
            //image
            Image.network(widget.imageLink,
                height: widget.height * 0.2, width: widget.width * 0.4),
             SizedBox(height: widget.height * 0.01),
             Text(widget.name, style: textStyle0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('GHS${widget.price}', style: textStyle0,),
                IconButton(icon: widget.icon , onPressed: widget.onPressed),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: grayish,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Center(child: Text('Add to Cart')),
                )
              ),
            ),
            //SizedBox(height: widget.height * 0.01),

          ],
        ),
      ),
    );

  }
}


class LikedProductsGrid extends StatefulWidget {
  LikedProductsGrid({Key? key, this.height, this.width, required this.imageLink, required this.name, required this.price, required this.id}) : super(key: key);


  final height;
  final width;
  final String imageLink;
  final String name;
  final int price;
  final String id;


  @override
  State<LikedProductsGrid> createState() => _LikedProductsGridState();
}

class _LikedProductsGridState extends State<LikedProductsGrid> {

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

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
          padding: EdgeInsets.all(widget.width * 0.03),
          child: Column(
            children: [
              //image
              Image.network(widget.imageLink,
                  height: widget.height * 0.2, width: widget.width * 0.4),
              SizedBox(height: widget.height * 0.02),
              Text(widget.name, style: textStyle0,),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text('GHS${widget.price}', style: textStyle0,),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  }
}