import 'package:belajar_slicing_ui/screen/on_boarding_screen/on_boarding_screen.dart';
import 'package:belajar_slicing_ui/utils/color_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: ColorStyles.neutralLightGreyLightLightest,
          useMaterial3: true,
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}
