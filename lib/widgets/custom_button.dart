import 'package:flutter/material.dart';
import 'package:genio_pay_test/utils/dimensions.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final Color? backgroundColor;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    this.child,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: Dimensions.getProportionateScreenHeight(40),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          elevation: MaterialStateProperty.all(0),
        ),
        child: child,
      ),
    );
  }
}
