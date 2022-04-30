import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_components/flutter_components.dart'
    show TextFormFieldFactory;
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('CustomTextFFormFieldWidget - Multiples scenaries',
      (tester) async {
    final builder = GoldenBuilder.column()
      ..addScenario(
        'Default',
        TextFormFieldFactory.show(
          initialValue: 'Default',
        ),
      )
      ..addScenario(
        'Disable',
        TextFormFieldFactory.show(
          initialValue: 'Disable',
          enabled: false,
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(300, 300),
    );

    await screenMatchesGolden(tester, 'custom_button_multiples_states');
  });
}
