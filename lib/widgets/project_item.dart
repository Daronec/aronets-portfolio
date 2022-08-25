import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key? key,
    required this.year,
    this.tasks,
    required this.stack,
    required this.position,
    required this.description,
  }) : super(key: key);

  final String year;
  final String? tasks;
  final String stack;
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
                description,
                style: AppTextStyles.textStyle16w500.copyWith(
                  fontWeight: FontWeight.w600,
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
                stack,
                style: AppTextStyles.textStyle16w500,
              ),
              const SizedBox(
                height: 10,
              ),
              if (tasks != null)
                Text(
                  tasks!,
                  style: AppTextStyles.textStyle12normal,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
