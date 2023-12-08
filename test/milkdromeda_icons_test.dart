import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:milkdromeda_icons/milkdromeda_icons.dart';

void main() {
  testWidgets("it should be callable", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
          home: Column(
        children: [
          Icon(MilkdromedaIcons.action1),
          Icon(MilkdromedaIcons.action2),
          Icon(Icons.confirmation_num_sharp),
          Icon(MilkdromedaIcons.battery),
          Icon(MilkdromedaIcons.gameDice),
          Icon(MilkdromedaIcons.compass),
        ],
      )),
    );

    await tester.pumpAndSettle();

    expect(find.byIcon(MilkdromedaIcons.action1), findsOneWidget);
    expect(find.byIcon(MilkdromedaIcons.action2), findsOneWidget);
    expect(MilkdromedaIcons.action1, isNotNull);
  });
}
