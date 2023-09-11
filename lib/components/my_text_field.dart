import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String text;
  final void Function(String) onchange;
  MyTextField({
    super.key,
    required this.text,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ]),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(7),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.search),
          ),
          Expanded(
            child: TextField(
              onChanged: onchange,
              decoration: InputDecoration(
                hintText: "Enter a movie name",
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
