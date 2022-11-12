import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/styles/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/app_bar.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class BasicPlan extends StatefulWidget {
  const BasicPlan({super.key});

  @override
  State<BasicPlan> createState() => _BasicPlanState();
}

class _BasicPlanState extends State<BasicPlan> {
  final _items = [
    AppColors.lightBlue.withOpacity(0.3),
    AppColors.lightBlue,
    AppColors.lightBlue.withOpacity(0.3),
  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
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
                margin: EdgeInsets.only(
                  left: Dimensions.getProportionateScreenWidth(24),
                  right: Dimensions.getProportionateScreenWidth(24),
                  top: Dimensions.getProportionateScreenWidth(8),
                ),
                child: const CustomAppBar(),
              ),
              // SizedBox(
              //   height: Dimensions.getProportionateScreenHeight(15),
              // ),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.getProportionateScreenHeight(24),
                ),
                child: Text(
                  'The more money you send, the better your insurance gets',
                  style: AppTextStyles.bodyText(
                    AppColors.lightBlue,
                    Dimensions.getProportionateScreenHeight(18),
                    FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // SizedBox(
              //   height: Dimensions.getProportionateScreenHeight(7),
              // ),
              const Spacer(),
              SizedBox(
                height: Dimensions.getProportionateScreenHeight(572),
                child: PageView.builder(
                  itemCount: _items.length,
                  controller: _pageController,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages();
                  },
                  onPageChanged: (int index) {
                    _currentPageNotifier.value = index;
                  },
                ),
              ),
              // SizedBox(
              //   height: Dimensions.getProportionateScreenHeight(16),
              // ),
              const Spacer(),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  _buildCircleIndicator7(),
                ]
                    .map(
                      (item) => Padding(
                        padding: EdgeInsets.all(
                          Dimensions.getProportionateScreenWidth(8),
                        ),
                        child: item,
                      ),
                    )
                    .toList(),
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  text: 'Terms & Conditions apply, click ',
                  style: AppTextStyles.bodyText(
                    Colors.black,
                    Dimensions.getProportionateScreenHeight(12),
                    FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'here',
                      style: AppTextStyles.bodyText(
                        AppColors.lightBlue,
                        Dimensions.getProportionateScreenHeight(12),
                        FontWeight.w500,
                      ).copyWith(
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                              debugPrint('You clicked on this link'),
                            },
                    ),
                    const TextSpan(
                      text: ' for more',
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  _pages() {
    return SizedBox(
      height: Dimensions.getProportionateScreenHeight(550),
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: Dimensions.getProportionateScreenHeight(532.46),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.getProportionateScreenHeight(24),
              ),
              child: _details(),
            ),
          ),
          Positioned(
            top: 1,
            left: 0,
            right: 0,
            child: Container(
              width: Dimensions.getProportionateScreenWidth(76),
              height: Dimensions.getProportionateScreenWidth(76),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF3EC9E7),
                    AppColors.lightBlue,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.gray_2.withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              padding: EdgeInsets.all(
                Dimensions.getProportionateScreenWidth(16),
              ),
              child: Image.asset(
                'assets/images/vector.png',
                width: Dimensions.getProportionateScreenWidth(31.25),
                height: Dimensions.getProportionateScreenHeight(43.75),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _details() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Basic Plan',
          style: AppTextStyles.bodyText(
            Colors.black,
            Dimensions.getProportionateScreenHeight(18),
            FontWeight.w700,
          ),
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(8),
        ),
        Text(
          'Send €200 (or more) per month and get coverage for:',
          style: AppTextStyles.bodyText(
            AppColors.lightBlue,
            Dimensions.getProportionateScreenHeight(18),
            FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(32),
        ),
        _rowTexts(
          'Accidental death, dismemberment, orparalysis',
          'Up to',
          '',
          '€5,000',
          false,
          true,
          true,
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(16),
        ),
        _rowTexts(
          'Temporary total disability',
          '',
          '(Caused by an Accident)',
          'N/A',
          true,
          false,
          true,
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(16),
        ),
        Text(
          'In case of death due to an accident:',
          style: AppTextStyles.bodyText(
            AppColors.lightBlue,
            Dimensions.getProportionateScreenHeight(14),
            FontWeight.w500,
          ),
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(16),
        ),
        _rowTexts(
          'Funeral Costs',
          'N/A',
          '',
          '',
          false,
          false,
          false,
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(8),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            'OR',
            style: AppTextStyles.bodyText(
              const Color(0xFF5D5D5D),
              Dimensions.getProportionateScreenHeight(14),
              FontWeight.w300,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: Dimensions.getProportionateScreenHeight(8),
        ),
        _rowTexts(
          'Reparation',
          'N/A',
          '',
          '',
          false,
          false,
          false,
        ),
      ],
    );
  }

  Widget _rowTexts(
    String topLeftText,
    String topRightText,
    String bottomLeftText,
    String bottomRightText,
    bool showBottomLeft,
    bool showTopRight,
    bool showLine,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Dimensions.getProportionateScreenWidth(173),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topLeftText,
                    style: AppTextStyles.bodyText(
                      Colors.black,
                      Dimensions.getProportionateScreenHeight(14),
                      FontWeight.w500,
                    ),
                  ),
                  showBottomLeft
                      ? Text(
                          bottomLeftText,
                          style: AppTextStyles.bodyText(
                            const Color(0xFF5D5D5D),
                            16,
                            FontWeight.w300,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                showTopRight
                    ? Text(
                        topRightText,
                        style: AppTextStyles.bodyText(
                          const Color(0xFF5D5D5D),
                          Dimensions.getProportionateScreenHeight(12),
                          FontWeight.w300,
                        ),
                        textAlign: TextAlign.end,
                      )
                    : Container(),
                Text(
                  bottomRightText,
                  style: AppTextStyles.bodyText(
                    Colors.black,
                    Dimensions.getProportionateScreenHeight(14),
                    FontWeight.w500,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ],
        ),
        showLine
            ? SizedBox(
                height: Dimensions.getProportionateScreenHeight(17.5),
              )
            : Container(),
        showLine
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 0.05,
                color: AppColors.lightBlue,
              )
            : Container(),
      ],
    );
  }

  _buildCircleIndicator7() {
    return CirclePageIndicator(
      size: 10.0,
      selectedSize: 12.0,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
      dotColor: AppColors.lightBlue.withOpacity(0.3),
      selectedDotColor: AppColors.lightBlue,
    );
  }
}
