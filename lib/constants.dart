import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffFF7029);
const Color backgroundColor = Color(0xffF5F5F5);
const Color textColor = Color(0xff777E90);

const Color hintColor = Color(0xff7F808A);
const Color dividerColor =  Color(0xffDDDDDD);
const Color bookmarkBgColor =  Color(0xff8DE7FB);
const Color blackColor =  Color(0xff050D12);
const Color redishColor =  Color(0xffF9595F);


getScreenWidth(context){

  double width = MediaQuery.of(context).size.width;
  return width;
}

getScreenHeight(context){

  double height = MediaQuery.of(context).size.height;
  return height;
}


List<String> images = ['assets/place_1.png','assets/place_2.png'];
List<String> names = ["Manarola, Italy ",'Labannio, Spain'];