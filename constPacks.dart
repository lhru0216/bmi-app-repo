import 'package:flutter/material.dart';

const kTilecolour = Color(0xFF1D1F33);
const kActivetextcolour = Color.fromARGB(255, 255, 255, 255);
const kInactiveTilecolour = Color(0xFF8d8e98);
const bgColor = Color(0xFF090c20);

var selectedGender = BoxDecoration(
  color: const Color.fromARGB(255, 40, 44, 88),
  borderRadius: BorderRadius.circular(10),
);

var boxdecor = BoxDecoration(
  color: kTilecolour,
  borderRadius: BorderRadius.circular(10),
);

Color getBmiColor(double bmi) {
  if (bmi >= 25) {
    return Colors.red;
  } else if (bmi > 18.5) {
    return Colors.green;
  } else {
    return Colors.yellow;
  }
}