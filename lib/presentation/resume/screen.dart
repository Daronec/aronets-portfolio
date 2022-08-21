import 'package:aronets_portfolio/data/models/resume_model.dart';
import 'package:aronets_portfolio/data/services.dart';
import 'package:aronets_portfolio/source/app_images.dart';
import 'package:aronets_portfolio/stles/text_styles.dart';
import 'package:aronets_portfolio/widgets/education_item.dart';
import 'package:aronets_portfolio/widgets/project_item.dart';
import 'package:aronets_portfolio/widgets/table_item.dart';
import 'package:aronets_portfolio/widgets/work_experience_item.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  Resume? resume;
  final services = Services();

  @override
  void initState() {
    getResume();
    super.initState();
  }

  Future<void> getResume() async {
    services.getResume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 600,
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
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.photo,
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Аронец Дмитрий Васильевич',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Мужчина, родился 28 августа 1986',
                              style: AppTextStyles.textStyle16w500,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '+7 (918) 9952689',
                              style: AppTextStyles.textStyle16w500,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'daronec@yandex.ru',
                              style: AppTextStyles.textStyle16w500,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TableItem(
                              title: 'Проживание',
                              value: 'станица Смоленская',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TableItem(
                              title: 'Гражданство',
                              value: 'Россия',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Не готов к переезду, не готов к командировкам',
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
                    'Желаемая должность и зарплата',
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
                  const Text(
                    'Flutter разработчик',
                    style: AppTextStyles.textStyle21bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TableItem(
                    title: 'Специализации',
                    value: 'Программист, разработчик',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TableItem(
                    title: 'Занятость',
                    value: 'полная занятость',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TableItem(
                    title: 'График работы',
                    value: ' удаленная работа, полный день',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TableItem(
                    title: 'Желательное время в пути до работы',
                    value: 'не более часа',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
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
                  const WorkExperienceItem(
                    period: 'Январь 2022 — настоящее время, 8 месяцев',
                    companyName: 'RiverStart',
                    city: 'Нижний Новгород',
                    position: 'Программист-разработчик',
                    description: 'Разработка мобильных приложений',
                  ),
                  const WorkExperienceItem(
                    period: 'Сентябрь 2021 — Декабрь 2021, 4 месяца',
                    companyName: 'KT-Team',
                    city: 'Тольятти',
                    position: 'Программист-разработчик',
                    description:
                        'Верстка мобильного приложения на Flutter/Dart в сфере логистики',
                  ),
                  const WorkExperienceItem(
                    period: 'Февраль 2020 — Июнь 2021, 1 год 5 месяцев',
                    companyName: 'ИП "SimpleCode"',
                    city: 'Караганда',
                    position: 'Программист-разработчик',
                    description: 'Верстка мобильных приложений на Flutter/Dart',
                  ),
                  const WorkExperienceItem(
                    period: 'Февраль 2016 — Ноябрь 2019, 3 года 10 месяцев',
                    companyName: 'ТОО "Roboclub"',
                    city: 'Караганда',
                    position: 'Преподаватель робототехники и конструирования',
                    description:
                        'Преподаватель программирования:\n- Преподавание основ электроники и программирования\n- Разработка дизайна рекламы центра.',
                  ),
                  const WorkExperienceItem(
                    period: 'Январь 2019 — Июль 2019, 7 месяцев',
                    companyName: 'Uplink',
                    city: 'Екатеринбург',
                    position: 'Монтажник слаботочных систем',
                    description:
                        'Прокладке слаботочных систем, прокладка и пайка оптоволокна, монтаж телекоммуникационных шкафов, подключение к электросети.',
                  ),
                  const WorkExperienceItem(
                    period: 'Сентябрь 2018 — Декабрь 2018, 4 месяца',
                    companyName: 'ТОО "Roboclub"',
                    city: 'Караганда',
                    position: 'Администратор',
                    description:
                        '- Работа с клиентами\n- Работа с финансами\n- Работа с расписанием и записью новых клиентов\n- Бытовые работы\n- Внедрение образовательной crm-системы.',
                  ),
                  const WorkExperienceItem(
                    period: 'Июнь 2013 — Декабрь 2015, 2 года 7 месяцев',
                    companyName: 'ТОО "АРНА"',
                    city: 'Нур-Султан',
                    position:
                        'Мастер участка, монтажник вентилируемых фасадов и декоративных элементов',
                    description:
                        '- Контроль качества выполненных работ\n- Учет и заказ материала\n- Поиск поставщиков и поставка материала\n- Расчет выполненного объема работ\n- Отчет по выполненным работам.',
                  ),
                  const WorkExperienceItem(
                    period: 'Июнь 2011 — Апрель 2013, 1 год 11 месяцев',
                    companyName: 'ТОО "Greenway"',
                    city: 'Караганда',
                    position: 'Менеджер интернет-магазина',
                    description:
                        '- Ведение продаж интернет-магазина\n- Наполнение каталога товаров\n- Работа с социальными сетями\n- Фотосъемка товара\n- Работа над разработкой нового интернет-магазина, работа с исполнителями, создание технического задания\n- Написание рекламных текстов\n- Работа над отзывами в сети\n- Работа с документами в 1С\n- Аналитика статистики продаж\n- Аналитика статистики Яндекс Метрик\n- Работа с рекламными компаниями Яндекс Директ и Google Adwords.',
                  ),
                  const WorkExperienceItem(
                    period: 'Июль 2009 — Май 2011, 1 год 11 месяцев',
                    companyName: 'Интернет компания Allinfo.kz',
                    city: 'Караганда',
                    position: 'Проект-менеджер проекта "3DTOUR.KZ"',
                    description:
                        '- Работа с клиентами\n- Работа с финансами\n- Работа с расписанием и записью новых клиентов\n- Бытовые работы\n- Внедрение образовательной crm-системы.',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
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
                  const EducationItem(
                    year: '2013',
                    name:
                        'Карагандинский государственный университет имени Е. А. Букетова, Караганда',
                    specialization: 'Графический дизайнер',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const EducationItem(
                    year: '2006',
                    name: 'Карагандинский гуманитарный колледж',
                    specialization: 'Преподаватель ИЗО и Черчения',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Опыт вождения',
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
                    title: 'Права категории',
                    value: 'B',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TableItem(
                    title: 'Стаж вождения',
                    value: 'с 2004 года',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
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
                  const ProjectItem(
                    year: '2022',
                    description:
                        'CRM система для внутреннего учета задач, времени и финансов',
                    position:
                        'Frontend-developer, создание структуры приложения, выбор стека, верстка экранов и работа с логикой',
                    stack: 'Bloc, Dio, freezed',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
