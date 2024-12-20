import 'package:belajar_slicing_ui/screen/experience_screen/experience_screen.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:belajar_slicing_ui/utils/text_styles.dart';
import 'package:belajar_slicing_ui/widgets/button_global_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: ColorStyles.highlightPrimaryLightest,
              child: PageView.builder(
                itemCount: 3,
                controller: _pageController,
                onPageChanged: (index) {
                  _currentIndex = index;
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.image_sharp,
                    size: 100,
                    color: ColorStyles.highlightPrimaryLight,
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              color: ColorStyles.neutralLightGreyLightLightest,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: List.generate(
                    3,
                    (index) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: index == _currentIndex
                              ? ColorStyles.highlightPrimaryDarkest
                              : ColorStyles.neutralDarkDarkest,
                          shape: BoxShape.circle,
                        ),
                      );
                    },
                  )),
                  const Gap(24),
                  Text(
                    'Create a prototype in just a few minutes',
                    style: TextStyles.h1.copyWith(
                      color: ColorStyles.black1,
                    ),
                  ),
                  const Gap(24),
                  Text(
                    'Enjoy these pre-made components and worry only about creating the best product ever.',
                    style: TextStyles.bodyS.copyWith(
                      color: ColorStyles.neutralDarkLight,
                    ),
                  ),
                  const Gap(48),
                  ButtonGlobalWidget(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExperienceScreen(),
                        ),
                        (val) => false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
