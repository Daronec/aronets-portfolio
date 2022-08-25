import 'package:aronets_portfolio/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
        backgroundColor: Colors.grey,
        strokeWidth: 1,
      ),
    );
  }
}
