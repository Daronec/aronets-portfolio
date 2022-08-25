import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension StringExtension on DateTime {
  String get formatDate {
    initializeDateFormatting();
    String dateFormat = DateFormat("dd MMMM yyyy г.", 'ru_RU').format(this);
    return dateFormat;
  }
}
