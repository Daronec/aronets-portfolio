import 'package:cloud_firestore/cloud_firestore.dart';

class Services {
  final fb = FirebaseFirestore.instance;

  Future<bool> getResume() async {
    final response = fb.collection('resume').doc();
    print(response);
    return true;
  }
}
