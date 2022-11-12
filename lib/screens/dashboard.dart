import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:genio_pay_test/models/transaction_model.dart';
import 'package:genio_pay_test/screens/basic_plan.dart';
import 'package:genio_pay_test/screens/international_transfer.dart';
import 'package:genio_pay_test/styles/color.dart';
import 'package:genio_pay_test/utils/app_text_styles.dart';
import 'package:genio_pay_test/utils/dimensions.dart';
import 'package:genio_pay_test/widgets/transaction_list_card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String currency = 'GHS';

  final imageList = <String>[
    'assets/images/first_image.png',
    'assets/images/first_image.png',
    'assets/images/first_image.png',
    'assets/images/first_image.png',
  ];

  final List<Transaction> _transactions = [
    Transaction(
      amount: '99.00',
      name: 'Dribbble',
      imageUrl: 'assets/images/dribble.png',
      date: '2022.11.11',
      status: 'Completed',
    ),
    Transaction(
      amount: '99.00',
      name: 'Spotify',
      imageUrl: 'assets/images/spotify.png',
      date: '2022.11.12',
      status: 'In Progress',
    ),
    Transaction(
      amount: '99.00',
      name: 'Spotify',
      imageUrl: 'assets/images/spotify.png',
      date: '2022.10.11',
      status: 'Completed',
    ),
    Transaction(
      amount: '99.00',
      name: 'Dribbble',
      imageUrl: 'assets/images/dribble.png',
      date: '2022.11.11',
      status: 'Completed',
    ),
  ];

  // bool _isExpanded = false;
  final PanelController _pc = PanelController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.getProportionateScreenWidth(24),
                vertical: Dimensions.getProportionateScreenHeight(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color: AppColors.lightBlue,
                              ),
                            ),
                            padding: EdgeInsets.all(
                              Dimensions.getProportionateScreenWidth(3),
                            ),
                            child: Container(
                              width: 43,
                              height: 43,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/profile_pic.png'),
                                ),
                              ),
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.getProportionateScreenWidth(10),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: AppTextStyles.bodyText(
                                  AppColors.lightBlue,
                                  14,
                                  FontWeight.w500,
                                ),
                              ),
                              Text(
                                'New Genius',
                                style: AppTextStyles.bodyText(
                                  AppColors.lightBlue,
                                  20,
                                  FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/tree.png',
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                'assets/icons/notification.png',
                                width: 20,
                                height: 20,
                              ),
                              Image.asset(
                                'assets/icons/help_blue.png',
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '10 000',
                                style: AppTextStyles.bodyText(
                                  AppColors.lightBlue,
                                  14,
                                  FontWeight.w600,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/star.png',
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.getProportionateScreenHeight(34.5),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: Dimensions.getProportionateScreenHeight(280),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.center,
                        colors: [
                          AppColors.lightBlue,
                          const Color(0xFFE0F7FE),
                          Colors.white.withOpacity(0.3),
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      border: Border.all(
                        color: AppColors.lightBlue,
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.getProportionateScreenWidth(17),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Total Balance',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            14,
                            FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(4),
                        ),
                        Text(
                          '\$450.49',
                          style: AppTextStyles.bodyText(
                            AppColors.lightBlue,
                            44,
                            FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(24),
                        ),
                        Container(
                          width: 70,
                          // height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.lightBlue.withOpacity(0.2),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 5,
                          ),
                          child: CurrencyPickerDropdown(
                            initialValue: currency,
                            itemBuilder: _buildCurrencyDropdownItem,
                            onValuePicked: (Country? country) {
                              debugPrint("${country!.name}");
                              setState(() {
                                currency = country.currencyCode!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(24),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 0.2,
                          color: AppColors.lightBlue,
                        ),
                        SizedBox(
                          height: Dimensions.getProportionateScreenHeight(16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const InternationalTransfer(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: AppColors.lightBlue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Image.asset(
                                      'assets/icons/arrow_right_square.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.getProportionateScreenHeight(5),
                                ),
                                Text(
                                  'Pay Out',
                                  style: AppTextStyles.bodyText(
                                    AppColors.lightBlue,
                                    14,
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: AppColors.lightBlue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/icons/login.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.getProportionateScreenHeight(5),
                                ),
                                Text(
                                  'Pay In',
                                  style: AppTextStyles.bodyText(
                                    AppColors.lightBlue,
                                    14,
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const InternationalTransfer(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: AppColors.lightBlue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/icons/swap.png',
                                      width: 10,
                                      height: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.getProportionateScreenHeight(5),
                                ),
                                Text(
                                  'Exchange',
                                  style: AppTextStyles.bodyText(
                                    AppColors.lightBlue,
                                    14,
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => const BasicPlan(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: AppColors.lightBlue,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Image.asset(
                                      'assets/icons/category.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.getProportionateScreenHeight(5),
                                ),
                                Text(
                                  'More',
                                  style: AppTextStyles.bodyText(
                                    AppColors.lightBlue,
                                    14,
                                    FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.getProportionateScreenHeight(14),
                  ),
                ],
              ),
            ),
          ),

          // Align(
          //   alignment: Alignment.center,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: Dimensions.getProportionateScreenHeight(40),
          //     color: Colors.white.withOpacity(0.7),
          //   ),
          // ),

          // Expanded(
          //   child: _slideUpPanel(),
          // )
          _slideUpPanel(),
        ],
      ),
    );
  }

  Widget _slideUpPanel() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        child: SlidingUpPanel(
          controller: _pc,
          minHeight: Dimensions.getProportionateScreenHeight(300),
          maxHeight: Dimensions.getProportionateScreenHeight(585),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: const [
            BoxShadow(blurRadius: 50, color: Colors.white, offset: Offset(0, -9)),
          ],
          header: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.getProportionateScreenHeight(35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.getProportionateScreenWidth(10),
                    ),
                    topRight: Radius.circular(
                      Dimensions.getProportionateScreenWidth(10),
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _pc.close();
                      // _isExpanded = false;
                    });
                  },
                  child: Image.asset(
                    'assets/icons/dash.png',
                  ),
                ),
              ),
            ],
          ),
          panelBuilder: (ScrollController sc) => _panelBuilder(sc),
          onPanelOpened: () {
            setState(() {
              // _isExpanded = true;
            });
          },
          onPanelClosed: () {
            setState(() {
              // _isExpanded = false;
            });
          },
        ),
      ),
    );
  }

  Widget _panelBuilder(ScrollController scrollController) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(28),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: Dimensions.getProportionateScreenHeight(93),
              // disableCenter: true,
              // pageSnapping: false,
            ),
            items: imageList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: Dimensions.getProportionateScreenWidth(305),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(i),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(16),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionateScreenWidth(24),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: AppTextStyles.bodyText(
                    Colors.black,
                    16,
                    FontWeight.w600,
                  ),
                ),
                Text(
                  'View All',
                  style: AppTextStyles.bodyText(
                    Colors.black,
                    14,
                    FontWeight.w400,
                  ).copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.getProportionateScreenHeight(16),
          ),
          ListView.builder(
            itemCount: _transactions.length,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return TransactionListCard(transaction: _transactions[index]);
            },
          )
        ],
      ),
    );
  }

  Widget _buildCurrencyDropdownItem(Country country) => SizedBox(
        child: Text(
          "${country.currencyCode}",
          style: AppTextStyles.bodyText(
            AppColors.lightBlue,
            12,
            FontWeight.w500,
          ),
        ),
      );
}
