import 'package:flutter/material.dart';
import 'package:genio_pay_test/screens/authentication/registration.dart';
import 'package:genio_pay_test/styles/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const Registration(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.backgroundWhite,
      child: Center(
        child: Image.asset('assets/images/geniopay.png'),
      ),
    );
  }
}
