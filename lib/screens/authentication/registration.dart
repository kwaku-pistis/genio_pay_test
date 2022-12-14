import 'package:flutter/material.dart';
import 'package:genio_pay_test/providers/country_and_tin_provider.dart';
import 'package:genio_pay_test/screens/authentication/proof_identity.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/styles/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/app_bar.dart';
import 'package:genio_pay_test/widgets/check_list_tile.dart';
import 'package:genio_pay_test/widgets/country_and_tin.dart';
import 'package:genio_pay_test/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
    final countryProvider = Provider.of<CountryAndTinProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                    style: AppTextStyles.titleText(
                      Colors.black,
                      14,
                      FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: 'FATCA ',
                        style: AppTextStyles.titleText(
                          AppColors.lightBlue,
                          14,
                          FontWeight.w600,
                        ),
                      ),
                      const TextSpan(
                        text: 'and ',
                      ),
                      TextSpan(
                        text: 'CRS ',
                        style: AppTextStyles.titleText(
                          AppColors.lightBlue,
                          16,
                          FontWeight.w600,
                        ),
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
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: countryProvider.countryAndTin.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        countryProvider.countryAndTin[index],
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(8),
                        ),
                        GestureDetector(
                          onTap: () {
                            countryProvider.deleteFronCountryList(index);
                            debugPrint('$index');
                            setState(() {});
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/icons/delete.png',
                              width:
                                  Dimensions.getProportionateScreenWidth(12.8),
                              height:
                                  Dimensions.getProportionateScreenHeight(13.2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(17.6),
                        ),
                      ],
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    countryProvider.addCountryAndTin(
                      const CountryAndTin(),
                    );
                    setState(() {});
                  },
                  child: Container(
                    width: Dimensions.getProportionateScreenWidth(40),
                    height: Dimensions.getProportionateScreenWidth(40),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.ellipse,
                    ),
                    child: Icon(
                      Icons.add,
                      size: Dimensions.getProportionateScreenWidth(20),
                      color: AppColors.iconBlack,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(8),
                ),
                Text(
                  'Add another country',
                  style: AppTextStyles.bodyText(
                    AppColors.gray_2,
                    14,
                    FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(40),
                ),
                _requirements(
                  '2. FATCA related',
                  'Please select one of the options by checking the corresponding box below:',
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(21.5),
                ),
                CheckListTile(
                  text: RichText(
                    text: TextSpan(
                      text: 'I herby certify that ',
                      style: AppTextStyles.bodyText(
                        AppColors.gray_2,
                        12,
                        FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                          text: 'I am a tax resident of the United States ',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            12,
                            FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text:
                              'and that I have designated the United States as ,one of the countries in the above section.',
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(20.5),
                ),
                CheckListTile(
                  text: RichText(
                    text: TextSpan(
                      text: 'I herby certify that ',
                      style: AppTextStyles.bodyText(
                        AppColors.gray_2,
                        12,
                        FontWeight.w300,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'that I am not a tax resident of the United States.',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            12,
                            FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(40),
                ),
                CheckListTile(
                  text: _requirements(
                    '3. Declaration',
                    'I herby declare that the information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that I will inform you within 30 days if any certification on this form becomes incorrect or will no longer be aplied.',
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(34),
                ),
                Text(
                  'Date: 11.11.2022',
                  style: AppTextStyles.bodyText(
                    AppColors.lightBlue,
                    16,
                    FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(16),
                ),
                CustomButton(
                  backgroundColor: AppColors.ellipse,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ProofIdentity(),
                      ),
                    );
                  },
                  child: Text(
                    'CONTINUE',
                    style: AppTextStyles.bodyText(
                      const Color(0xFF5D5D5D),
                      14,
                      FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(30),
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
          style: AppTextStyles.titleText(
            AppColors.lightBlue,
            16,
            FontWeight.w600,
          ),
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(8),
        ),
        Text(
          body,
          style: AppTextStyles.bodyText(
            Colors.black,
            14,
            FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
