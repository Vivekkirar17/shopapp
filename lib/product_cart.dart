import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String title;
  const ProductCart({super.key ,
  required this.title,
   });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title) 
        ],
      ),
    );
  }
}