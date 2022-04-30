import 'package:flutter/material.dart';

import 'custom_button_interface.dart';

class CustomButtonAndroidWidget implements ICustomButton {
  @override
  Widget create({
    required String title,
    VoidCallback? onPressed,
    required double fontSize,
    Color? titleColor,
    Color? backgroundColor,
    required bool loading,
    required double height,
  }) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          onSurface: backgroundColor?.withAlpha(100),
        ),
        child: loading
            ? CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(titleColor),
              )
            : Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: titleColor,
                ),
              ),
      ),
    );
  }
}
