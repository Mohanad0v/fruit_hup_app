import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../gen/assets.gen.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible: true,
            image: Assets.images.pageViewItem1BackgroundImage,
            backgroundImage: Assets.images.pageViewItem1Image,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في', style: TextStyles.bold23),
                Text(' HUB',
                    style: TextStyles.bold23
                        .copyWith(color: AppColors.secondaryColor)),
                Text('Fruit',
                    style: TextStyles.bold23
                        .copyWith(color: AppColors.primaryColor)),
              ],
            )),
        PageViewItem(
            isVisible: false,
            image: Assets.images.pageViewItem2BackgroundImage,
            backgroundImage: Assets.images.pageViewItem2Image,
            subtitle:
                'انقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ابحث وتسوق',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF0C0D0D),
                      fontSize: 23,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                      height: 0),
                ),
              ],
            ))
      ],
    );
  }
}
