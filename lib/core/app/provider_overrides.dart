import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut/core/providers/shared_preference_provider.dart';

Future<List<Override>> getOverrides() async {
  final sharedPref = await SharedPreferences.getInstance();

  return [
    sharedPreferencesProvider.overrideWithValue(sharedPref),
  ];
}
