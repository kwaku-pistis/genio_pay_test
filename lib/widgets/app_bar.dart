import 'package:flutter/material.dart';
import 'package:genio_pay_test/utils/dimensions.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? leadingIcon;
  final String? title;
  final Widget? trailing;
  final Color? backgroundColor;

  const CustomAppBar({
    super.key,
    this.leadingIcon,
    this.title,
    this.trailing,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: leadingIcon ??
              Image.asset(
                'assets/icons/back_icon.png',
                width: Dimensions.getProportionateScreenWidth(17.5),
                height: Dimensions.getProportionateScreenHeight(11.25),
              ),
          ),
          Text(
            title ?? "",
            style: const TextStyle(
              fontFamily: 'IBM Plex Sans',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff001B21),
            ),
          ),
          trailing ?? Icon(Icons.help_outline, color: Colors.black, size: Dimensions.getProportionateScreenWidth(13.6)),
        ],
      ),
    );
  }
}
