import 'package:flutter/material.dart';

class QuantityWidgets extends StatelessWidget {
  const QuantityWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(),
          )
        ],
      ),
    );
  }
}
