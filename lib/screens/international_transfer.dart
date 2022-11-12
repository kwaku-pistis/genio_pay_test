import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';
import 'package:country_currency_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/styles/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/app_bar.dart';
import 'package:genio_pay_test/widgets/custom_button.dart';
import 'package:genio_pay_test/widgets/transfer_list_tile_card.dart';

class InternationalTransfer extends StatefulWidget {
  const InternationalTransfer({super.key});

  @override
  State<InternationalTransfer> createState() => _InternationalTransferState();
}

class _InternationalTransferState extends State<InternationalTransfer> {
  String senderCountry = 'Poland';
  String senderCurrency = 'USD';
  String receiverCountry = 'Poland';
  String receiverCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.backgroundWhite,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionateScreenWidth(24),
              vertical: Dimensions.getProportionateScreenHeight(8),
            ),
            child: Column(
              children: [
                CustomAppBar(
                  leadingIcon: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: Dimensions.getProportionateScreenWidth(17.5),
                    ),
                  ),
                  title: 'International Transfer',
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(25.5),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/icons/carbon_calendar_add.png'),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(20),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: Dimensions.getProportionateScreenHeight(178),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF07051A).withOpacity(0.3),
                        offset: const Offset(0, 8),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.getProportionateScreenWidth(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You send from $senderCountry',
                                style: AppTextStyles.bodyText(
                                  Colors.black,
                                  8,
                                  FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height:
                                    Dimensions.getProportionateScreenHeight(14),
                              ),
                              CurrencyPickerDropdown(
                                initialValue: 'USD',
                                itemBuilder: _buildCurrencyDropdownItem,
                                onValuePicked: (Country? country) {
                                  debugPrint("${country!.name}");
                                  setState(() {
                                    senderCountry = country.name!;
                                    senderCurrency = country.currencyCode!;
                                  });
                                },
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '1 $senderCurrency = 0.94 $receiverCurrency',
                                style: AppTextStyles.bodyText(
                                  Colors.black,
                                  10,
                                  FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height:
                                    Dimensions.getProportionateScreenHeight(4),
                              ),
                              Text(
                                '\$1,000.00',
                                style: AppTextStyles.bodyText(
                                  Colors.black,
                                  20,
                                  FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.getProportionateScreenWidth(16),
                            height: Dimensions.getProportionateScreenWidth(16),
                            decoration: const BoxDecoration(
                              color: AppColors.lightBlue,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset('assets/icons/transfer.png'),
                          ),
                          Expanded(
                            child: Container(
                              width:
                                  Dimensions.getProportionateScreenWidth(270),
                              height:
                                  Dimensions.getProportionateScreenWidth(0.2),
                              color: AppColors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.getProportionateScreenHeight(5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'They receive in $receiverCountry',
                                style: AppTextStyles.bodyText(
                                  Colors.black,
                                  8,
                                  FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height:
                                    Dimensions.getProportionateScreenHeight(14),
                              ),
                              CurrencyPickerDropdown(
                                initialValue: 'USD',
                                itemBuilder: _buildCurrencyDropdownItem,
                                onValuePicked: (Country? country) {
                                  debugPrint("${country!.name}");
                                  setState(() {
                                    receiverCountry = country.name!;
                                    receiverCurrency = country.currencyCode!;
                                  });
                                },
                              ),
                            ],
                          ),
                          Text(
                            '€935.34',
                            style: AppTextStyles.bodyText(
                              AppColors.lightBlue,
                              22,
                              FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                TransferListTileCard(
                  heading: 'Receiver',
                  avatar: Container(
                    width: Dimensions.getProportionateScreenWidth(40),
                    height: Dimensions.getProportionateScreenWidth(40),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                      ),
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
                  ),
                  content: Text(
                    'Jane Smith',
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      14,
                      FontWeight.w600,
                    ),
                  ),
                  subContent: Text(
                    '+44567876543',
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      14,
                      FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                //delivery time
                TransferListTileCard(
                  heading: 'Delivery Time',
                  avatar: Container(
                    width: Dimensions.getProportionateScreenWidth(40),
                    height: Dimensions.getProportionateScreenWidth(40),
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
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/send_small.png',
                    ),
                  ),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icons/thunder.png'),
                          Text(
                            'Instant',
                            style: AppTextStyles.bodyText(
                              Colors.black,
                              14,
                              FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Free  ',
                        style: AppTextStyles.bodyText(
                          AppColors.lightBlue,
                          14,
                          FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  subContent: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Within 30 minutes',
                        style: AppTextStyles.bodyText(
                          Colors.black,
                          14,
                          FontWeight.w600,
                        ),
                      ),
                      Text(
                        '\$3.00',
                        style: AppTextStyles.bodyText(
                          Colors.black,
                          14,
                          FontWeight.w300,
                        ).copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                // payment method
                TransferListTileCard(
                  heading: 'Payment Method',
                  avatar: Container(
                    width: Dimensions.getProportionateScreenWidth(40),
                    height: Dimensions.getProportionateScreenWidth(40),
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
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/payment_card.png',
                    ),
                  ),
                  content: Text(
                    'Card payment',
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      14,
                      FontWeight.w600,
                    ),
                  ),
                  subContent: SizedBox(
                    width: Dimensions.getProportionateScreenWidth(160),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/logos_mastercard.png'),
                        Text(
                          'Mastercard x-123',
                          style: AppTextStyles.bodyText(
                            Colors.black,
                            14,
                            FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),

                // reference
                TransferListTileCard(
                  heading: 'Reference',
                  avatar: Container(
                    width: Dimensions.getProportionateScreenWidth(40),
                    height: Dimensions.getProportionateScreenWidth(40),
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
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/reference.png',
                    ),
                  ),
                  content: Text(
                    'School fees',
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      14,
                      FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(24),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: Dimensions.getProportionateScreenHeight(74),
                  decoration: const BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.getProportionateScreenWidth(32.36),
                  ),
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Image.asset('assets/icons/total_icon.png'),
                    title: Text(
                      'Total to pay',
                      style: AppTextStyles.bodyText(
                        Colors.white,
                        14,
                        FontWeight.w300,
                      ),
                    ),
                    subtitle: Text(
                      '\$1,005.00',
                      style: AppTextStyles.bodyText(
                        Colors.white,
                        18,
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.getProportionateScreenHeight(40),
                ),
                CustomButton(
                  backgroundColor: AppColors.yellow,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'SEND',
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
      ),
    );
  }

  Widget _buildCurrencyDropdownItem(Country country) => SizedBox(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text("${country.currencyCode}"),
          ],
        ),
      );
}
