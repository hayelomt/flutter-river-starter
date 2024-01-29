import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tut/core/app/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tut/core/core.dart';
import 'package:tut/features/settings/presentation/states/app_theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final appTheme = ref.watch(appThemeProvider);
    final colorScheme = getThemeScheme(appTheme.colorScheme);

    return MaterialApp.router(
      title: 'Flutter Starter',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(useMaterial3: true, colorScheme: colorScheme.light),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: colorScheme.dark),
      themeMode: appTheme.mode,
      routerConfig: router,
    );
  }
}
