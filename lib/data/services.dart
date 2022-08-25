import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class Services {
  final fb = FirebaseFirestore.instance;
  FirebaseDatabase database = FirebaseDatabase.instance;

  static Future<Resume?> getResume() async {
    Resume? resume;
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('resume').get();
    if (snapshot.exists) {
      resume = Resume.fromFirestore(snapshot.value as Map<String, dynamic>?);
    } else {
      print('No data available.');
    }
    return resume;
  }
}
