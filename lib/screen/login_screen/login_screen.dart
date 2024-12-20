import 'package:belajar_slicing_ui/models/login_third_model.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:belajar_slicing_ui/utils/text_styles.dart';
import 'package:belajar_slicing_ui/widgets/button_global_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: ColorStyles.highlightPrimaryLightest,
              child: const Icon(
                Icons.image,
                size: 32,
                color: ColorStyles.highlightPrimaryLight,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: ColorStyles.neutralLightGreyLightLightest,
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyles.h1,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyles.actionActionM.copyWith(
                      color: ColorStyles.highlightPrimaryDarkest,
                    ),
                  ),
                  const Gap(24),
                  ButtonGlobalWidget(
                    title: 'Login',
                    onPressed: () {},
                  ),
                  const Gap(16),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Not a member?',
                        style: TextStyles.bodyS.copyWith(
                          color: ColorStyles.neutralDarkLight,
                        ),
                        children: [
                          TextSpan(
                            text: ' Register now',
                            style: TextStyles.actionActionM.copyWith(
                              color: ColorStyles.highlightPrimaryDarkest,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(24),
                  const Divider(
                    color: ColorStyles.neutralLightGreyMedium,
                  ),
                  const Gap(24),
                  Center(
                    child: Text(
                      'Or continue with',
                      style: TextStyles.bodyS.copyWith(
                        color: ColorStyles.neutralDarkLight,
                      ),
                    ),
                  ),
                  const Gap(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      loginThirds.length,
                      (index) {
                        var data = loginThirds[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 12,
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                            padding: const EdgeInsets.all(14),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: data.color,
                            ),
                            child: Image.asset(
                              data.iconPath,
                              fit: BoxFit.cover,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
