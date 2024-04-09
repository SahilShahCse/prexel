
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xff253F50),
      ),
      decoration: InputDecoration(
        prefixIcon : Icon(
          size: 30,
          CupertinoIcons.search,
          color:Color(0xff253F50),
        ),

        hintText: 'Find a Book',
        hintStyle: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16 , color: Color(0xff253F50),
      ),

        contentPadding: EdgeInsets.only(bottom: 10),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}