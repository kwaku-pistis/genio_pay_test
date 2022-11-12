import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/dimensions.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.backgroundWhite,
      child: Center(
        child: Container(
          decoration:const  BoxDecoration(
            color: AppColors.lightBlue,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(Dimensions.getProportionateScreenWidth(15),),
          child: Image.asset('assets/icons/geniopay_logo.png'),
        ),
      ),
    );
  }
}