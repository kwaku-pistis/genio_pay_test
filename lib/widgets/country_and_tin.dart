import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/check_list_tile.dart';

class CountryAndTin extends StatefulWidget {
  const CountryAndTin({super.key});

  @override
  State<CountryAndTin> createState() => _CountryAndTinState();
}

class _CountryAndTinState extends State<CountryAndTin> {
  String countryName = 'Brazil';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: Dimensions.getProportionateScreenHeight(56),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                width: 1,
                color: AppColors.lightBlue,
              ),
              gradient: const LinearGradient(
                begin: Alignment.center,
                end: Alignment.center,
                colors: [
                  AppColors.lightBlue,
                  Color(0xFFE0F7FE),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: ListTile(
              leading: CountryPickerDropdown(
                initialValue: 'GH',
                itemBuilder: _buildDropdownItem,
                // itemFilter:  ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                priorityList: [
                  CountryPickerUtils.getCountryByName('Ghana'),
                  CountryPickerUtils.getCountryByName('Brazil'),
                ],
                onValuePicked: (Country value) {
                  setState(() {
                    countryName = value.name;
                  });
                },
              ),
              title: Text(
                'Country',
                style: AppTextStyles.bodyText(
                  AppColors.gray_2,
                  12,
                  FontWeight.w300,
                ),
              ),
              subtitle: Text(
                countryName,
                style: AppTextStyles.bodyText(
                  Colors.black,
                  14,
                  FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(10),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: Dimensions.getProportionateScreenHeight(56),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                width: 1,
                color: AppColors.lightBlue,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionateScreenWidth(14),
            ),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text(
                  'Enter TIN',
                  style: AppTextStyles.bodyText(
                    AppColors.gray_2,
                    14,
                    FontWeight.w300,
                  ),
                ),
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(8),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.delete_forever_outlined,
              color: AppColors.lightBlue,
              size: Dimensions.getProportionateScreenHeight(17),
            ),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(17.6),
          ),
          Container(
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
        ],
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => SizedBox(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
          ],
        ),
      );
}
