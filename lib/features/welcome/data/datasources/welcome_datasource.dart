import 'package:shared_preferences/shared_preferences.dart';

const String kDontShowAgain = 'dontShowAgain';

class WelcomeDataSourece {
  final SharedPreferences sharedPreferences;

  WelcomeDataSourece({required this.sharedPreferences});

  registerDontShowAgain({required bool value}) async {
    await sharedPreferences.setBool(kDontShowAgain, value);
  }

  getDontShowAgain() {
    return sharedPreferences.getBool(kDontShowAgain) ?? false;
  }
}
