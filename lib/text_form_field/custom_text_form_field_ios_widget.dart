import 'package:flutter/cupertino.dart';

import 'custom_text_form_field_interface.dart';

class CustomTextFormFieldIosWidget implements ICustomTextFormField {
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
    Color? backgroundColor,
    bool? enabled,
  }) {
    return CupertinoTextFormFieldRow(
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      maxLength: maxLength,
      autocorrect: autocorrect,
      enabled: enabled,
      validator: validator,

      // decoration: InputDecoration(
      //   isDense: isDense,
      //   labelText: labelText,
      // ),
      onSaved: onSaved,
    );
  }
}
