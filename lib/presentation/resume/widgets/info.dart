import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/source/app_images.dart';
import 'package:aronets_portfolio/source/functions.dart';
import 'package:aronets_portfolio/styles/app_colors.dart';
import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:aronets_portfolio/widgets/table_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.resume,
  }) : super(key: key);

  final Resume resume;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.photo,
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shimmer(
                    duration: 3000.ms,
                    color: AppColors.primary.withOpacity(0.2),
                  )
                  .animate() // this wraps the previous Animate in another Animate
                  .fadeIn(
                    duration: 1200.ms,
                    curve: Curves.easeOutQuad,
                  )
                  .slide(),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      resume.name!,
                      style: AppTextStyles.textStyle24bold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${getGender(resume.gender!)}, ?????????????? ${resume.birthDate}',
                      style: AppTextStyles.textStyle16w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () => phoneCall(resume.phone!),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 18,
                            color: AppColors.primary,
                          )
                              .animate(
                                  onPlay: (controller) => controller.repeat())
                              .rotate(
                                delay: const Duration(milliseconds: 3000),
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.fastOutSlowIn,
                              )
                              .scale(
                                delay: const Duration(milliseconds: 3000),
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.easeInBack,
                                begin: 1,
                                end: 1.2,
                              ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            resume.phone!,
                            style: AppTextStyles.textStyle16w500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () => sendEmail(resume.email!),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.mail_outline,
                            size: 18,
                            color: AppColors.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            resume.email!,
                            style: AppTextStyles.textStyle16w500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TableItem(
                      title: '????????????????????',
                      value: resume.address!,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TableItem(
                      title: '??????????????????????',
                      value: resume.nationality!,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      resume.relocation!,
                      style: AppTextStyles.textStyle16w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            '???????????????? ?????????????????? ?? ????????????????',
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
          TableItem(
            title: '??????????????????',
            value: resume.specialization!,
          ),
          const SizedBox(
            height: 20,
          ),
          TableItem(
            title: '???????????????? ??????????',
            value: '${getFormatterNumber(resume.salary.toString())} ???',
          ),
          const SizedBox(
            height: 20,
          ),
          TableItem(
            title: '??????????????????',
            value: resume.employment!,
          ),
          const SizedBox(
            height: 20,
          ),
          TableItem(
            title: '???????????? ????????????',
            value: resume.schedule!,
          ),
          const SizedBox(
            height: 20,
          ),
          TableItem(
            title: '?????????????????????? ?????????? ?? ???????? ???? ????????????',
            value: resume.timeBeforeWork!,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            '???????? ????????????????',
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
          const TableItem(
            title: '?????????? ??????????????????',
            value: 'B',
          ),
          const SizedBox(
            height: 10,
          ),
          const TableItem(
            title: '???????? ????????????????',
            value: '?? 2004 ????????',
          ),
        ],
      ),
    );
  }
}
