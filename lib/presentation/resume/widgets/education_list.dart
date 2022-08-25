import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:aronets_portfolio/widgets/education_item.dart';
import 'package:flutter/material.dart';

class EducationList extends StatelessWidget {
  const EducationList({
    Key? key,
    required this.educationList,
  }) : super(key: key);

  final List<Education> educationList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Образование',
          style: AppTextStyles.textStyle18w500.copyWith(
            color: Colors.grey,
          ),
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: educationList.length,
          itemBuilder: (context, index) => EducationItem(
            year: educationList[index].year.toString(),
            name: educationList[index].institution!,
            specialization: educationList[index].specialization!,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        ),
      ],
    );
  }
}
