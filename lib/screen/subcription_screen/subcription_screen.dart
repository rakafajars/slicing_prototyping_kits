import 'package:belajar_slicing_ui/models/subcriptions_model.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:belajar_slicing_ui/utils/text_styles.dart';
import 'package:belajar_slicing_ui/widgets/button_global_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SubcriptionScreen extends StatefulWidget {
  const SubcriptionScreen({super.key});

  @override
  State<SubcriptionScreen> createState() => _SubcriptionScreenState();
}

class _SubcriptionScreenState extends State<SubcriptionScreen> {
  final _listBenefits = <String>[
    'Unlimited access',
    '200GB storage',
    'Sync all your devices',
  ];

  SubcriptionsModel? _selectedSubcriptions;

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
            const Gap(48),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your\nsubscription plan',
                    style: TextStyles.h1.copyWith(
                      color: ColorStyles.neutralDarkDarkest,
                    ),
                  ),
                  const Gap(16),
                  Text(
                    'And get a 7-day free trial',
                    style: TextStyles.bodyM.copyWith(
                      color: ColorStyles.neutralDarkLight,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(42),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                listSubcriptions.length,
                (index) {
                  var subcription = listSubcriptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _selectedSubcriptions = subcription;

                        setState(() {});
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        decoration: BoxDecoration(
                          color: _selectedSubcriptions == subcription
                              ? ColorStyles.highlightPrimaryLightest
                              : null,
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          border: _selectedSubcriptions == subcription
                              ? null
                              : Border.all(
                                  color: ColorStyles.neutralLightGreyDark,
                                ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio<SubcriptionsModel>(
                                  value: subcription,
                                  groupValue: _selectedSubcriptions,
                                  activeColor:
                                      ColorStyles.highlightPrimaryDarkest,
                                  onChanged: (value) {
                                    _selectedSubcriptions = value;

                                    setState(() {});
                                  },
                                  visualDensity: const VisualDensity(
                                    horizontal: -4,
                                    vertical: -4,
                                  ),
                                ),
                                const Gap(4),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      subcription.namePackage,
                                      style: TextStyles.h4.copyWith(
                                        color: ColorStyles.neutralDarkDarkest,
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          subcription.priceDiscount != null,
                                      child: Text(
                                        '${subcription.priceDiscount} discount',
                                        style: TextStyles.bodyXS.copyWith(
                                          color: ColorStyles
                                              .highlightPrimaryDarkest,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  subcription.price,
                                  style: TextStyles.h3.copyWith(
                                    color: ColorStyles.neutralDarkDarkest,
                                  ),
                                ),
                                Text(
                                  subcription.duration,
                                  style: TextStyles.bodyXS.copyWith(
                                    color: ColorStyles.neutralDarkDarkest,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Gap(32),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: ColorStyles.neutralLightGreyLighLight,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You'll get:",
                    style: TextStyles.h3
                        .copyWith(color: ColorStyles.neutralDarkDarkest),
                  ),
                  const SizedBox(height: 16),
                  for (var benefit in _listBenefits)
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: ColorStyles.highlightPrimaryDarkest,
                          ),
                          const Gap(8),
                          Text(
                            benefit,
                            style: TextStyles.bodyS.copyWith(
                              color: ColorStyles.neutralDarkLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
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
            title: 'Subscribe',
            onPressed: _selectedSubcriptions != null ? () {} : null,
          ),
        ),
      ),
    );
  }
}
