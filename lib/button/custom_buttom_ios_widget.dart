import 'package:flutter/cupertino.dart';

import 'custom_button_interface.dart';

class CustomButtonIosWidget implements ICustomButton {
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
    return CupertinoButton(
      onPressed: onPressed,
      color: backgroundColor,
      disabledColor: backgroundColor?.withAlpha(100) ??
          CupertinoColors.quaternarySystemFill,
      child: loading ? const CupertinoActivityIndicator() : Text(title),
    );
  }
}
