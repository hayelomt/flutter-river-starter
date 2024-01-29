import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tut/core/core.dart';
import 'package:tut/core/providers/shared_preference_provider.dart';

part 'local_storage_provider.g.dart';

@riverpod
LocalStorage localStorage(LocalStorageRef ref) {
  return LocalStorageImpl(ref.read(sharedPreferencesProvider));
}
