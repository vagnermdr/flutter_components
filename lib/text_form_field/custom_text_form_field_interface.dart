import 'package:flutter/material.dart';

abstract class ICustomTextFormField {
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
  });
}
