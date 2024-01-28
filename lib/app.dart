import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding_screen.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BaseAppTheme.lightTheme,
      darkTheme: BaseAppTheme.darkTheme,
      title: "Apni Dukaan",
      home: const OnBoarding(),
    );
  }
}
