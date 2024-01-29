import 'package:flutter/material.dart';
import 'package:tut/core/core.dart';

class ThemeBtn extends StatelessWidget {
  const ThemeBtn({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPress,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kPaddingXS),
        decoration: BoxDecoration(
          color: isSelected ? context.colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(kBorderXS),
        ),
        child: Center(
          child: Text(
            label,
            style: context.textTheme.titleMedium?.copyWith(
              color: isSelected
                  ? context.colorScheme.onPrimary
                  : context.colorScheme.onPrimaryContainer,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
