import 'package:flutter/material.dart';

import 'custom_text_form_field_interface.dart';

class CustomTextFormFieldAndroidWidget implements ICustomTextFormField {
  @override
  Widget create({
    TextEditingController? controller,
    String? initialValue,
    String? labelText,
    String? hintText,
    TextInputType? keyboardType,
    required TextCapitalization textCapitalization,
    int? maxLength,
    bool? isDense,
    required bool autocorrect,
    Function(String? val)? onSaved,
    String? Function(String? val)? validator,
    bool? enabled,
  }) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      autocorrect: autocorrect,
      enabled: enabled,
      decoration: InputDecoration(
        isDense: isDense,
        labelText: labelText,
        hintText: hintText,
      ),
      maxLength: maxLength,
      validator: validator,
      onSaved: onSaved,
    );
  }
}
