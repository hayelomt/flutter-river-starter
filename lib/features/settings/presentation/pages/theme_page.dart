import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tut/core/core.dart';
import 'package:tut/core/theme/colors_schemes/default_scheme.dart';
import 'package:tut/features/settings/presentation/states/app_theme.dart';
import 'package:tut/features/settings/presentation/widgets/color_btn.dart';
import 'package:tut/features/settings/presentation/widgets/theme_btn.dart';

class ThemePage extends HookConsumerWidget {
  static const routeName = '/theme-settings';

  const ThemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    final selectedScheme = getThemeScheme(appTheme.colorScheme);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr.configureTheme,
          style: context.textTheme.displaySmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.tr.themeMode,
                style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: kSizingS),
              Container(
                padding: const EdgeInsets.all(kPaddingXXS),
                decoration: BoxDecoration(
                  color: context.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(kBorderXS),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ThemeBtn(
                        label: context.tr.themeLight,
                        isSelected: appTheme.mode == ThemeMode.light,
                        onPress: () =>
                            ref.read(appThemeProvider.notifier).toggleThemeMode(ThemeMode.light),
                      ),
                    ),
                    Expanded(
                      child: ThemeBtn(
                        label: context.tr.themeDark,
                        isSelected: appTheme.mode == ThemeMode.dark,
                        onPress: () =>
                            ref.read(appThemeProvider.notifier).toggleThemeMode(ThemeMode.dark),
                      ),
                    ),
                    Expanded(
                      child: ThemeBtn(
                        label: context.tr.themeSystem,
                        isSelected: appTheme.mode == ThemeMode.system,
                        onPress: () =>
                            ref.read(appThemeProvider.notifier).toggleThemeMode(ThemeMode.system),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kSizing),
              Text(
                context.tr.themeColor,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: kSizingS),
              Wrap(
                spacing: kSizingS,
                runSpacing: kSizingS,
                children: colorSchemes.entries
                    .map((val) => ColorBtn(
                          themeScheme: val.value,
                          onTap: () {
                            ref.read(appThemeProvider.notifier).toggleScheme(val.key);
                          },
                          isSelected: selectedScheme == val.value,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
