import '../models/products.dart';
import 'manage.dart';
import 'package:flutter/material.dart';

class ProductProvider extends Manage {

  List<Products> products = [
    Products('Black Tee', '1',
        'https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/black-tee.jpg?alt=media&token=15a638e2-4e0a-4e9e-9aa6-b132068f3a92',
        10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Massa tincidunt nunc pulvinar sapien et ligula. Aliquam nulla facilisi cras fermentum odio eu feugiat. Donec massa sapien faucibus et. Dignissim diam quis enim lobortis scelerisque fermentum'),
    Products('Blue Tee', '2',
        'https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/blue-tee.jpg?alt=media&token=00f60c37-0c26-4b57-90f1-16539c09ffd9',
        10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Massa tincidunt nunc pulvinar sapien et ligula. Aliquam nulla facilisi cras fermentum odio eu feugiat. Donec massa sapien faucibus et. Dignissim diam quis enim lobortis scelerisque fermentum'),
    Products('Brown Tee', '3',
        'https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/brown-tee.jpg?alt=media&token=53cf67e1-dd2b-4784-b5ec-f499f9e62ed0',
        10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Massa tincidunt nunc pulvinar sapien et ligula. Aliquam nulla facilisi cras fermentum odio eu feugiat. Donec massa sapien faucibus et. Dignissim diam quis enim lobortis scelerisque fermentum'),
    Products('Grey Tee', '4',
        'https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/grey-tee.jpg?alt=media&token=4db1567a-55b4-41e4-a58b-2af0bfba3aa3',
        10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Massa tincidunt nunc pulvinar sapien et ligula. Aliquam nulla facilisi cras fermentum odio eu feugiat. Donec massa sapien faucibus et. Dignissim diam quis enim lobortis scelerisque fermentum'),
    Products('White Tee', '5',

        'https://firebasestorage.googleapis.com/v0/b/ecommerce-a1f58.appspot.com/o/white-tee.jpg?alt=media&token=8663c69f-c69c-408b-ae46-5949a9c092c2',
        10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Massa tincidunt nunc pulvinar sapien et ligula. Aliquam nulla facilisi cras fermentum odio eu feugiat. Donec massa sapien faucibus et. Dignissim diam quis enim lobortis scelerisque fermentum0'),

  ];

  List<Products> likedProducts = [];
  List<Products> cartProducts = [];

  void addToList(List outerList, List innerList, index){
    outerList.contains(innerList[index]) ?
        (){
      outerList.remove(innerList[index]);
      notifyListeners();
    }:
        (){
      outerList.add(innerList[index]);
  notifyListeners();
    };
    }
}