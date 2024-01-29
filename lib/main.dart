import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tut/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final overrides = await getOverrides();

  runApp(
    ProviderScope(
      overrides: overrides,
      child: const App(),
    ),
  );
}
