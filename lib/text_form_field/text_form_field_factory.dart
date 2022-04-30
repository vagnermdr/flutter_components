import 'dart:io';

import 'package:flutter/material.dart';

import 'custom_text_form_field_android_widget.dart';
import 'custom_text_form_field_ios_widget.dart';
import 'custom_text_form_field_interface.dart';

class TextFormFieldFactory {
  static Widget show({
    TextEditingController? controller,
    String? initialValue,
    String? labelText,
    String? hintText,
    TextInputType? keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    int? maxLength,
    bool? isDense,
    bool autocorrect = true,
    Function(String? val)? onSaved,
    String? Function(String? val)? validator,
    bool? enabled,
  }) {
    ICustomTextFormField textFormField;

    try {
      if (Platform.isIOS) {
        textFormField = CustomTextFormFieldIosWidget();
      } else {
        textFormField = CustomTextFormFieldAndroidWidget();
      }
    } catch (e) {
      textFormField = CustomTextFormFieldAndroidWidget();
    }

    return textFormField.create(
      controller: controller,
      initialValue: initialValue,
      labelText: labelText,
      hintText: hintText,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      maxLength: maxLength,
      isDense: isDense,
      autocorrect: autocorrect,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
    );
  }
}
