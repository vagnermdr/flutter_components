import 'package:flutter/material.dart';
import 'package:flutter_components/button/button_factory.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('CustomButtonWidget - Multiples scenaries', (tester) async {
    final builder = GoldenBuilder.column()
      ..addScenario(
        'Default',
        CustomButtonFactory.show(
          title: 'CustomButton',
          onPressed: () {},
        ),
      )
      ..addScenario(
        'Disable',
        CustomButtonFactory.show(
          title: 'CustomButton',
          onPressed: null,
        ),
      );

    await tester.pumpWidgetBuilder(
      builder.build(),
      surfaceSize: const Size(300, 300),
    );

    await screenMatchesGolden(tester, 'custom_button_multiples_states');
  });
}
