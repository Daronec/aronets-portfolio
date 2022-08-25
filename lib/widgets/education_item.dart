import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:flutter/material.dart';

class EducationItem extends StatelessWidget {
  const EducationItem({
    Key? key,
    required this.year,
    required this.name,
    required this.specialization,
  }) : super(key: key);
  final String year;
  final String name;
  final String specialization;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            year,
            style: AppTextStyles.textStyle12normal.copyWith(
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTextStyles.textStyle16w500.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                specialization,
                style: AppTextStyles.textStyle12normal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
