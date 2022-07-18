import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

class Manage extends ChangeNotifier{


void changeIsLiked(isLiked){
  print(isLiked);
  isLiked = !isLiked;
  print(isLiked);
  notifyListeners();
  return isLiked;

}
}