import 'package:ecommerce/models/screen-arguments.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);
  static const routeName = 'itemPage';


  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: height * 0.2, width : width,child: Image.network(args.image),),
          Text(args.name),
          Text(args.price),
          Text(args.description),
          ElevatedButton(onPressed: (){}, child: const Text('Add To Cart'))
        ],      ),
    );
  }
}
