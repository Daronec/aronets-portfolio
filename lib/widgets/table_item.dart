import 'package:aronets_portfolio/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  const TableItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            '$title: ',
            style: AppTextStyles.textStyle16w500,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: AppTextStyles.textStyle16w500,
          ),
        ),
      ],
    );
  }
}
