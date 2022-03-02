import 'package:flutter/material.dart';
import 'package:news/ui/model.dart';

  Widget category(ProductModel item) {
    return itemListOfCategory(
        Image.asset(
          item.image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        item.text);
  }

  Container itemListOfCategory(Image Image, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipRRect(child: Image
              ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 5),
            margin: EdgeInsets.symmetric(
              horizontal: 7,
              vertical: 7,
            ),
            color: Color.fromARGB(255, 68, 61, 120).withOpacity(.88),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
