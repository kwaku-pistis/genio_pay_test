import 'package:flutter/material.dart';
import 'package:genio_pay_test/models/transaction_model.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';

class TransactionListCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionListCard({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      margin: EdgeInsets.only(
        bottom: Dimensions.getProportionateScreenHeight(16),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.getProportionateScreenWidth(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
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
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(transaction.imageUrl),
                ),
                SizedBox(
                  width: Dimensions.getProportionateScreenWidth(16),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.name,
                      style: AppTextStyles.bodyText(
                        Colors.black,
                        14,
                        FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.getProportionateScreenHeight(4),
                    ),
                    Text(
                      transaction.date,
                      style: AppTextStyles.bodyText(
                        AppColors.textGrey,
                        12,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-\$ ${transaction.amount}',
                style: AppTextStyles.bodyText(
                  Colors.black,
                  14,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: Dimensions.getProportionateScreenHeight(4),
              ),
              Text(
                transaction.status,
                style: AppTextStyles.bodyText(
                  transaction.status == 'Completed' ? AppColors.green : AppColors.orange,
                  12,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
