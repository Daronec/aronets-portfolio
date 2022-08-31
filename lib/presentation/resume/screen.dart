import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/data/services.dart';
import 'package:aronets_portfolio/presentation/resume/widgets/body.dart';
import 'package:aronets_portfolio/widgets/circular_indicator_widget.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  Resume? resume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<Resume?>(
          future: Services.getResume(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Body(resume: snapshot.data!);
            } else {
              return const CircularIndicatorWidget();
            }
          }),
    );
  }
}
