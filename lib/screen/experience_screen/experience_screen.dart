import 'package:belajar_slicing_ui/models/personalise_experience_model.dart';
import 'package:belajar_slicing_ui/screen/subcription_screen/subcription_screen.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:belajar_slicing_ui/utils/text_styles.dart';
import 'package:belajar_slicing_ui/widgets/button_global_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.neutralLightGreyLightLightest,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: LinearProgressIndicator(
                value: 0.5,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  ColorStyles.highlightPrimaryDarkest,
                ),
                backgroundColor: ColorStyles.neutralLightGreyMedium,
                minHeight: 8,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const Gap(41),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personalise your\nexperience',
                    style: TextStyles.h1.copyWith(
                      color: ColorStyles.neutralDarkDarkest,
                    ),
                  ),
                  const Gap(16),
                  Text(
                    'Choose your interests.',
                    style: TextStyles.bodyM.copyWith(
                      color: ColorStyles.neutralDarkLight,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                itemCount: listPersonaliseExperiences.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        listPersonaliseExperiences[index].isSelected =
                            !listPersonaliseExperiences[index].isSelected;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        decoration: BoxDecoration(
                          color: listPersonaliseExperiences[index].isSelected
                              ? ColorStyles.highlightPrimaryLightest
                              : null,
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: listPersonaliseExperiences[index].isSelected
                              ? null
                              : Border.all(
                                  color: ColorStyles.neutralLightGreyDark,
                                ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              listPersonaliseExperiences[index].title,
                              style: TextStyles.bodyM.copyWith(
                                color: ColorStyles.neutralDarkDarkest,
                              ),
                            ),
                            Visibility(
                              visible:
                                  listPersonaliseExperiences[index].isSelected,
                              child: const Icon(
                                Icons.check,
                                color: ColorStyles.highlightPrimaryDarkest,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ButtonGlobalWidget(
            onPressed: listPersonaliseExperiences
                    .any((element) => element.isSelected == true)
                ? () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SubcriptionScreen(),
                      ),
                      (val) => false,
                    );
                  }
                : null,
          ),
        ),
      ),
    );
  }
}
