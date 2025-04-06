import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class OrDiveder extends StatelessWidget {
  const OrDiveder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffDCDEDE),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: TextStyles.semiBold16,
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            color: Color(0xffDCDEDE),
          ),
        ),
      ],
    );
  }
}
