import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/styles/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';

class TransferListTileCard extends StatelessWidget {
  final String heading;
  final Widget avatar;
  final Widget? subContent;
  final Widget content;

  const TransferListTileCard({
    super.key,
    required this.avatar,
    required this.content,
    this.subContent,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: AppTextStyles.titleText(
              AppColors.lightBlue,
              16,
              FontWeight.w500,
            ),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(8),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: Dimensions.getProportionateScreenHeight(88),
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
            alignment: Alignment.center,
            child: ListTile(
              leading: avatar,
              title: content,
              subtitle: subContent,
              trailing: SizedBox(
                width: Dimensions.getProportionateScreenWidth(10.88),
                height: Dimensions.getProportionateScreenWidth(9.07),
                child: Image.asset('assets/icons/arrow_next.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
