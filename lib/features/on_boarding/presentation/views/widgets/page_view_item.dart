import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/features/auth/presentation/views/signin_view.dart';

import '../../../../../core/services/shared_prefrences_singleton.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/constants.dart';
import '../../../../../gen/assets.gen.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final dynamic image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                image,
                fit: BoxFit.fill,
              )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(backgroundImage)),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool('isOnBoardingViewSeen', true);
                    Navigator.of(context)
                        .pushReplacementNamed(SigninView.routeName);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('تخط',
                        style: TextStyles.regular13.copyWith(
                          color: const Color(0xFF949D9E),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0xFF4E5456)),
          ),
        ),
      ],
    );
  }
}
