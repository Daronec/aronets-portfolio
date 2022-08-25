import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:aronets_portfolio/widgets/project_item.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    Key? key,
    required this.projectList,
  }) : super(key: key);

  final List<Project> projectList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Участие в проектах',
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
          itemCount: projectList.length,
          itemBuilder: (context, index) => ProjectItem(
            year: projectList[index].year.toString(),
            description: projectList[index].description!,
            position: projectList[index].position!,
            stack: projectList[index].stack!,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        ),
      ],
    );
  }
}
