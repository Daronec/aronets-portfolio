import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/source/extensions.dart';
import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:aronets_portfolio/widgets/work_experience_item.dart';
import 'package:flutter/material.dart';

class WorkList extends StatelessWidget {
  const WorkList({
    Key? key,
    required this.workList,
  }) : super(key: key);

  final List<Work> workList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Опыт работы на Flutter - 2 года 6 месяцев.',
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
          itemCount: workList.length,
          itemBuilder: (context, index) => WorkExperienceItem(
            period:
                '${workList[index].startDate!.formatDate} —\n${workList[index].endDate != null ? workList[index].endDate!.formatDate : 'настоящее время'}',
            companyName: workList[index].company!,
            city: workList[index].city!,
            position: workList[index].position!,
            description: workList[index].tasks!,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        ),
      ],
    );
  }
}
