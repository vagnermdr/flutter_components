// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:io';

import 'package:flutter/material.dart';

import 'custom_button_interface.dart';
import 'custom_buttom_ios_widget.dart';
import 'custom_button_android_view.dart';

class CustomButtonFactory {
  static Widget show({
    required String title,
    double fontSize = 16,
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Color? titleColor,
    bool loading = false,
    double height = 48.0,
  }) {
    ICustomButton customButton;

    try {
      if (Platform.isIOS) {
        customButton = CustomButtonIosWidget();
      } else {
        customButton = CustomButtonAndroidWidget();
      }
    } catch (e) {
      customButton = CustomButtonAndroidWidget();
    }

    return customButton.create(
      title: title,
      onPressed: onPressed,
      fontSize: fontSize,
      titleColor: titleColor,
      backgroundColor: backgroundColor,
      loading: loading,
      height: height,
    );
  }
}
