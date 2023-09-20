import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:milkdromeda_icons/milkdromeda_icons.dart';

void main() {
  testWidgets("it should be callable", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
          home: Column(
        children: [
          Icon(MilkdromedaIcons.actionIcon1),
          Icon(MilkdromedaIcons.actionIcon2),
          Icon(Icons.confirmation_num_sharp),
        ],
      )),
    );

    await tester.pumpAndSettle();

    expect(find.byIcon(MilkdromedaIcons.actionIcon1), findsOneWidget);
    expect(find.byIcon(MilkdromedaIcons.actionIcon2), findsOneWidget);
    expect(MilkdromedaIcons.actionIcon1, isNotNull);
  });
}
