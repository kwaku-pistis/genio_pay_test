// Mocks generated by Mockito 5.3.2 from annotations
// in genio_pay_test/test/mocks/mock_country_and_tin.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i4;

import 'package:genio_pay_test/providers/country_and_tin_provider.dart' as _i2;
import 'package:genio_pay_test/widgets/country_and_tin.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [CountryAndTinProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockCountryAndTinProvider extends _i1.Mock
    implements _i2.CountryAndTinProvider {
  @override
  int get countryIndex => (super.noSuchMethod(
        Invocation.getter(#countryIndex),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  set countryIndex(int? _countryIndex) => super.noSuchMethod(
        Invocation.setter(
          #countryIndex,
          _countryIndex,
        ),
        returnValueForMissingStub: null,
      );
  @override
  List<_i3.CountryAndTin> get countryAndTin => (super.noSuchMethod(
        Invocation.getter(#countryAndTin),
        returnValue: <_i3.CountryAndTin>[],
        returnValueForMissingStub: <_i3.CountryAndTin>[],
      ) as List<_i3.CountryAndTin>);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  dynamic addCountryAndTin(_i3.CountryAndTin? countryAndTin) =>
      super.noSuchMethod(
        Invocation.method(
          #addCountryAndTin,
          [countryAndTin],
        ),
        returnValueForMissingStub: null,
      );
  @override
  dynamic deleteFronCountryList(int? index) => super.noSuchMethod(
        Invocation.method(
          #deleteFronCountryList,
          [index],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i4.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}