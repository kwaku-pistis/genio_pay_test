import 'package:flutter/material.dart';
import 'package:genio_pay_test/providers/country_and_tin_provider.dart';
import 'package:genio_pay_test/screens/registration.dart';
import 'package:genio_pay_test/screens/splashscreen.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountryAndTinProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
