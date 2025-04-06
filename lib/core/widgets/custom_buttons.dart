import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/size_config.dart';
import 'package:fruit_hub/core/widgets/constants.dart';
import 'package:fruit_hub/core/widgets/space_widget.dart';

import '../utils/app_text_styles.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {super.key, @required this.text, @required this.onPressed});

  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 54,
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: AppColors.primaryColor,
          ),
          onPressed: onPressed,
          child: Text(
            text!,
            style: TextStyles.bold16.copyWith(color: Colors.white),
          ),
        ));
  }
}

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String image;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xffDCDEDE),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(title,
              textAlign: TextAlign.center, style: TextStyles.semiBold16),
        ),
      ),
    );
  }
}
