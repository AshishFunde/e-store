import 'package:e_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// use of this class to setup themes, initial Bidings, any animations etc.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: onBoardingScreen(),
    );
  }
}
