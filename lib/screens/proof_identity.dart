import 'package:flutter/material.dart';
import 'package:genio_pay_test/screens/home.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/app_bar.dart';
import 'package:genio_pay_test/widgets/custom_button.dart';

class ProofIdentity extends StatelessWidget {
  const ProofIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.center,
              colors: [
                AppColors.lightBlue,
                Color(0xFFE0F7FE),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.getProportionateScreenWidth(24),
                  vertical: Dimensions.getProportionateScreenHeight(8),
                ),
                child: const CustomAppBar(),
              ),
              SizedBox(
                height: Dimensions.getProportionateScreenHeight(64.37),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.getProportionateScreenWidth(24),
                  vertical: Dimensions.getProportionateScreenHeight(8),
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'We need to verify\nyour ',
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      30,
                      FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'identity',
                        style: AppTextStyles.bodyText(
                          Colors.black,
                          30,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.getProportionateScreenHeight(30),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: Dimensions.getProportionateScreenHeight(565),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.getProportionateScreenWidth(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(32),
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: [
                                AppColors.lightBlue,
                                Color(0xFFE0F7FE),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Image.asset('assets/icons/id_card.png'),
                        ),
                        title: Text(
                          'Valid Government Issued ID Document Scan',
                          style: AppTextStyles.bodyText(
                            Colors.black,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          'learn more',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ).copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(30),
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: [
                                AppColors.lightBlue,
                                Color(0xFFE0F7FE),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Image.asset('assets/icons/home_heart.png'),
                        ),
                        title: Text(
                          'Proof of Residence Document Scan',
                          style: AppTextStyles.bodyText(
                            Colors.black,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          'learn more',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ).copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(30),
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: [
                                AppColors.lightBlue,
                                Color(0xFFE0F7FE),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Image.asset('assets/icons/camera.png'),
                        ),
                        title: Text(
                          'We will ask you to record a short video of yourself using the app',
                          style: AppTextStyles.bodyText(
                            Colors.black,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(40),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Please prepare documents\nmentioned above!',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(32),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'There may also be rare situations where we would require you to upload additional documents.',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            Dimensions.getProportionateScreenHeight(18),
                            FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(32),
                      ),
                      CustomButton(
                        backgroundColor: AppColors.yellow,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const Home(),
                            ),
                          );
                        },
                        child: Text(
                          'CONTINUE',
                          style: AppTextStyles.bodyText(
                            Colors.black,
                            16,
                            FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
