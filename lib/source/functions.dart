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
