/*
  Generated by Software Engineering
  Do not modified by hand
*/

import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String hello(String userName) {
    return 'Hello $userName';
  }

  @override
  String nWombats(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString wombats',
      one: '1 wombat',
      zero: 'no wombats',
    );
    return '$_temp0';
  }

  @override
  String pronoun(String gender) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'he',
        'female': 'she',
        'other': 'they',
      },
    );
    return '$_temp0';
  }

  @override
  String numberOfDataPoints(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactCurrency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Number of data points: $valueString';
  }
}
