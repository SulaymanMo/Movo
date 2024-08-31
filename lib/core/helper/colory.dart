import 'package:flutter/material.dart';

enum Colory {
  dark(Color(0xFF111B21)),
  light(Color(0xFFFFFFFF)),
  greyDark(Color(0xFF8696A0)),
  greyLight(Color(0xFF667781)),
  blueDark(Color(0xFF53BDEB)),
  blueLight(Color(0xFF027EB5)),
  greenDark(Color(0xFF008069)),
  greenLight(Color(0xFF00A884)),
  bgBtn(Color(0xFF182229)),
  bgGrey(Color(0xFF202C33)),
  yellow(Color(0xfff5c518)),
  // yellowLight(Color(0xfffed000)),
  blue(Color(0xff5799ef)),
  red(Color(0xfff83a43)),
  highlight(Color(0xFF09141A));

  final Color color;
  const Colory(this.color);
}
