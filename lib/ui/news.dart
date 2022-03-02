import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/component/categories.dart';

import 'model.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  // final productModel <ProductModel> _productModel;
  final List<ProductModel> _images = [
    ProductModel("assets/الاقتصاد.jpg","") ,
  ProductModel("assets/التكنولوجيا.jpg",""),
  ProductModel("assets/الرياضة.jpg",""),
  ProductModel("assets/السياحة.jpg",""),
  ProductModel("assets/car.jpg",""),
  ProductModel("assets/السياسة.jpg",""),
  ProductModel("assets/الصحة.jpg",""),
  ProductModel("assets/الطهى.jpg",""),
  ProductModel("assets/المعرفة.jpg",""),
  ProductModel("assets/حواء.jpg",""),
  ];

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(
                    22,
                  ),
                  margin: EdgeInsetsDirectional.only(
                    end: 5,
                    bottom: 5,
                    top: 11,
                  ),
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      "الاخبار",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 1.0.toInt()),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(
                    22,
                  ),
                  margin: EdgeInsetsDirectional.only(
                    start: 5,
                    bottom: 5,
                    top: 11,
                  ),
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      "المجلات",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 1.0.toInt()),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      childAspectRatio: 1.3 / 1),
                  itemBuilder: (context, index) =>category(_images[index]),
                  itemCount: _images.length)),
        ],
      ),
    );
  }
}
