import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tut/core/core.dart';
import 'package:tut/features/settings/presentation/presentation.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          context.tr.settings,
          style: context.textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: kPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                onTap: () {
                  context.push(ThemePage.routeName);
                },
                leading: Container(
                  padding: const EdgeInsets.all(kPaddingS),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: context.colorScheme.secondaryContainer),
                  child: const Icon(Icons.dark_mode),
                ),
                title: Text(
                  context.tr.theme,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(kPaddingXXS),
                  decoration: BoxDecoration(
                    color: context.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(kBorderXS),
                  ),
                  child: const Icon(Icons.chevron_right),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
