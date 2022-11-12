import 'package:flutter/widgets.dart';
import 'package:genio_pay_test/widgets/country_and_tin.dart';

class CountryAndTinProvider with ChangeNotifier {
  int countryIndex = 0;

  final List<CountryAndTin> _countryAndTinList = [
    const CountryAndTin(),
  ];
  List<CountryAndTin> get countryAndTin => _countryAndTinList;

  addCountryAndTin(CountryAndTin countryAndTin) {
    _countryAndTinList.add(countryAndTin);
    notifyListeners();
  }

  deleteFronCountryList(int index) {
    _countryAndTinList.removeAt(index);
    notifyListeners();
  }
}
