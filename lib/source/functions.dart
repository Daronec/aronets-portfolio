import 'package:url_launcher/url_launcher.dart';

String getGender(String gender) {
  String value = gender;
  switch (value) {
    case 'male':
      value = 'Мужчина';
      break;
    case 'female':
      value = 'Женщина';
      break;
  }
  return value;
}

Future<void> phoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> sendEmail(String email) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  await launchUrl(launchUri);
}

String getFormatterNumber(String num) {
  String value = '';
  String number = num;
  int length = number.length;
  int startLength = number.length;
  int max = (length / 3).round();
  for (int i = 0; i <= max + 1; i++) {
    startLength = length <= 3 ? 0 : length - 3;
    String part = number.substring(startLength, length);
    length = length <= 3 ? 0 : length - 3;
    value = '$part $value';
  }
  return value.replaceFirst(' ', '');
}
