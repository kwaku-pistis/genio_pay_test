import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:genio_pay_test/providers/country_and_tin_provider.dart';
import 'package:genio_pay_test/screens/registration.dart';
import 'package:genio_pay_test/widgets/custom_button.dart';
import 'package:provider/provider.dart';

import 'mocks/mock_country_and_tin.mocks.dart';

void main() {
  final mockCountryProvider = MockCountryAndTinProvider();

  testWidgets('find app bar text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<CountryAndTinProvider>(
            create: (_) => mockCountryProvider,
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Registration(),
        ),
      ),
    );
    final text = find.text('Registration');
    expect(text, findsOneWidget);
  });

  testWidgets('find country and tin listview', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<CountryAndTinProvider>(
            create: (_) => mockCountryProvider,
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Registration(),
        ),
      ),
    );
    final _widget = find.byType(ListView);
    expect(_widget, findsOneWidget);
  });

  testWidgets('find continue button', (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<CountryAndTinProvider>(
            create: (_) => mockCountryProvider,
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Registration(),
        ),
      ),
    );
    final continueButton = find.widgetWithText(CustomButton, 'CONTINUE');
    expect(continueButton, findsOneWidget);

    await tester.tap(continueButton);
    await tester.pumpAndSettle();
  });
}
