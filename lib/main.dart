import 'package:flutter/material.dart';
import 'package:genio_pay_test/screens/home.dart';
import 'package:genio_pay_test/screens/proof_identity.dart';
import 'package:genio_pay_test/screens/registration.dart';

void main() {
  runApp(const MyApp());
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
      home: const ProofIdentity(),
    );
  }
}

