import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class DontHaveAnAcount extends StatelessWidget {
  const DontHaveAnAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'لا تمتلك حساب ؟',
          style: TextStyles.semiBold16.copyWith(color: const Color(0xff949D9E)),
        ),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
            text: 'قم بإنشاء حساب',
            style:
                TextStyles.semiBold13.copyWith(color: AppColors.primaryColor)),
      ]),
    );
  }
}
