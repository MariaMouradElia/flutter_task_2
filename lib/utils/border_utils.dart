import 'package:flutter/material.dart';

class BorderUtilities {
  static InputBorder getBorder(){
    return OutlineInputBorder(
        borderSide : BorderSide(
          color: Colors.transparent,
        ),
        borderRadius : const BorderRadius.all(Radius.circular(40.0))

    );


  }
}