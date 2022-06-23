import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';

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

    return Scaffold(
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
                style: TextStyle(
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
          Container(
            height: height * 0.4,
            width: width * 0.4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: Column(
                children: [
                  //image
                  Image.asset('images/shirt0.jpg',
                      height: width * 0.2, width: width * 0.2),
                  const Text('T1'),
                  const Text('T2'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('T3'),
                      Icon(Icons.favorite),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
