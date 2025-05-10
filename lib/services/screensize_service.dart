import 'package:flutter/material.dart';

late double Height;
late double Width;

void screenSize(BuildContext context){
  Height = MediaQuery.of(context).size.height;
  Width = MediaQuery.of(context).size.width;
}