import 'package:flutter/material.dart';

abstract class ICustomButton {
  Widget create({
    required String title,
    required double fontSize,
    Color? backgroundColor,
    Color? titleColor,
    VoidCallback? onPressed,
    required bool loading,
    required double height,
  });
}
