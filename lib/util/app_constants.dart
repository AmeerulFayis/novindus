//asset images
import 'package:flutter/material.dart';

String icBackground = "assets/images/ic_background.png";
String icLogo = "assets/images/ic_logo.png";

//sizes
double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

// padding size
EdgeInsets commonPaddingAll = const EdgeInsets.all(10);
EdgeInsets commonPaddingAll20 = const EdgeInsets.all(20);
EdgeInsets commonPaddingAll30 = const EdgeInsets.all(30);
EdgeInsets commonPaddingAll15 = const EdgeInsets.all(15);
EdgeInsets commonPaddingAllOnBoard = const EdgeInsets.all(50);
EdgeInsets commonPaddingAll5 = const EdgeInsets.all(5);
EdgeInsets commonPaddingLR = const EdgeInsets.only(left: 10, right: 10);
EdgeInsets commonPaddingLR20 = const EdgeInsets.only(left: 20, right: 20);
EdgeInsets commonPaddingLR30 = const EdgeInsets.only(left: 30, right: 30);
EdgeInsets commonPaddingTB = const EdgeInsets.only(top: 10, bottom: 10);
EdgeInsets commonPaddingTB5 = const EdgeInsets.only(top: 5, bottom: 5);
EdgeInsets commonPaddingLR5 = const EdgeInsets.only(left: 5, right: 5);
EdgeInsets commonBgPadding = const EdgeInsets.only(
  left: 15,
  right: 15,
);

// divider

Widget dividerH40() {
  return const SizedBox(height: 40);
}

Widget dividerH12() {
  return const SizedBox(height: 12);
}

Widget dividerH8() {
  return const SizedBox(height: 8);
}

Widget dividerH5() {
  return const SizedBox(height: 5);
}

Widget dividerW8() {
  return const SizedBox(width: 8);
}

Widget dividerW3() {
  return const SizedBox(width: 3);
}

Widget dividerW20() {
  return const SizedBox(width: 20);
}

Widget dividerH30() {
  return const SizedBox(height: 30);
}
