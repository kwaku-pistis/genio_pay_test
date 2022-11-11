import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';

class CheckListTile extends StatefulWidget {
  final Widget text;

  const CheckListTile({
    super.key,
    required this.text,
  });

  @override
  State<CheckListTile> createState() => _CheckListTileState();
}

class _CheckListTileState extends State<CheckListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Dimensions.getProportionateScreenWidth(253),
                child: widget.text,
              ),
              GFCheckbox(
                size: GFSize.MEDIUM,
                activeBorderColor: AppColors.lightBlue,
                inactiveBorderColor: AppColors.lightBlue,
                activeBgColor: Colors.transparent,
                inactiveBgColor: Colors.transparent,
                type: GFCheckboxType.square,
                activeIcon: const Icon(
                  Icons.check,
                  size: 20,
                  color: AppColors.lightBlue,
                ),
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                value: isChecked,
                inactiveIcon: null,
              ),
            ],
          ),
          SizedBox(height: Dimensions.getProportionateScreenHeight(17.5),),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.05,
            color: AppColors.lightBlue,
          ),
        ],
      ),
    );
  }
}
