import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/presentation/resume/widgets/education_list.dart';
import 'package:aronets_portfolio/presentation/resume/widgets/info.dart';
import 'package:aronets_portfolio/presentation/resume/widgets/project_list.dart';
import 'package:aronets_portfolio/presentation/resume/widgets/work_list.dart';
import 'package:aronets_portfolio/source/app_images.dart';
import 'package:aronets_portfolio/source/constants.dart';
import 'package:aronets_portfolio/styles/app_colors.dart';
import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/num_duration_extensions.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.resume,
  }) : super(key: key);

  final Resume resume;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int indexStack = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: AppColors.primary,
                ),
                Container(
                  height: 100,
                  width: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.header),
                    ),
                  ),
                ).animate().fadeIn(
                      duration: 5000.ms,
                      curve: Curves.easeOutQuad,
                    ),
              ],
            ),
          ),
          SizedBox(
            width: 600,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(
                      menuList.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            indexStack = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 10,
                          ),
                          child: Text(
                            menuList[index],
                            style: AppTextStyles.textStyle16w500.copyWith(
                              decoration: index == indexStack
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              color: index == indexStack
                                  ? AppColors.primary
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                IndexedStack(
                  index: indexStack,
                  sizing: StackFit.expand,
                  children: [
                    Info(
                      resume: widget.resume,
                    ),
                    WorkList(
                      workList: widget.resume.workList!,
                    ),
                    EducationList(
                      educationList: widget.resume.educationList!,
                    ),
                    ProjectList(
                      projectList: widget.resume.projectList!,
                    ),
                  ],
                ),
                Container(
                  width: 600,
                  height: 280,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.bottomImage2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
