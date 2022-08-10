import 'package:flutter/material.dart';

class TextFormFieldTest extends StatelessWidget{
  final double? height;
  final double? width;
  final BoxFit? fit;
  final InputDecoration? inputDecoration;

  const TextFormFieldTest(
  {Key? key, this.height, this.width, this.fit, required this.inputDecoration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter at least 10 characters";
          } else {
            return null;
          }
        },
            decoration: inputDecoration ?? InputDecoration());
  }
}
