import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tut/core/core.dart';
import 'package:tut/features/settings/settings.dart';

class HomePage extends ConsumerWidget {
  static const String routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.push(SettingsPage.routeName);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Text(context.tr.appName),
      ),
    );
  }
}
