import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/app_bar.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppColors.backgroundWhite,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionateScreenWidth(24),
              vertical: Dimensions.getProportionateScreenWidth(8),
            ),
            child: Column(
              children: [
                const CustomAppBar(
                  title: 'Registration',
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Individual Self-Certification relevant for ',
                    style: AppTextStyles.titleText(Colors.black, 16),
                    children: [
                      TextSpan(
                        text: 'FATCA ',
                        style: AppTextStyles.titleText(AppColors.lightBlue, 16,),
                      ),
                      const TextSpan(
                        text: 'and ',
                      ),
                      TextSpan(
                        text: 'CRS ',
                        style: AppTextStyles.titleText(AppColors.lightBlue, 16,),
                      ),
                      const TextSpan(
                        text: 'purposes',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                _requirements(
                  '1. Country of your Tax Residence',
                  'Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country:',
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: Dimensions.getProportionateScreenHeight(56),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.center,
                      colors: [
                        AppColors.lightBlue,
                        Color(0xFFE0F7FE),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _requirements(String heading, String body) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: AppTextStyles.titleText(AppColors.lightBlue, 16,),
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(8),
        ),
        Text(
          body,
          style: AppTextStyles.bodyText(Colors.black, 14,),
        ),
      ],
    );
  }
}
