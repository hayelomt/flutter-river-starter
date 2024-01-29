import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tut/core/core.dart';

class ColorBtn extends ConsumerWidget {
  const ColorBtn({
    super.key,
    required this.themeScheme,
    required this.onTap,
    this.isSelected = false,
  });

  final ThemeScheme themeScheme;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = MediaQuery.of(context).platformBrightness == Brightness.light
        ? themeScheme.light.primary
        : themeScheme.dark.primary;
    final iconColor = MediaQuery.of(context).platformBrightness == Brightness.light
        ? themeScheme.light.onPrimary
        : themeScheme.dark.onPrimary;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.width * 0.2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kBorderXS),
        ),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: Text(
                  themeScheme.label,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: iconColor,
                  ),
                ),
              ),
            ),
            if (isSelected)
              Positioned(
                top: 0,
                right: 0,
                child: Icon(Icons.check_circle, color: iconColor),
              )
          ],
        ),
      ),
    );
  }
}
