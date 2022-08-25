import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:flutter/material.dart';

class WorkExperienceItem extends StatelessWidget {
  const WorkExperienceItem({
    Key? key,
    required this.period,
    required this.companyName,
    required this.city,
    required this.position,
    required this.description,
  }) : super(key: key);

  final String period;
  final String companyName;
  final String city;
  final String position;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            period,
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
                companyName,
                style: AppTextStyles.textStyle16w500.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                city,
                style: AppTextStyles.textStyle12normal.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                position,
                style: AppTextStyles.textStyle16w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: AppTextStyles.textStyle12normal,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
