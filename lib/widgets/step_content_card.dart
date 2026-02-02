import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../common/app_theme.dart';

class StepContentCard extends StatelessWidget {
  final CookingStep step;
  final int stepNumber;
  final int totalSteps;

  const StepContentCard({
    super.key,
    required this.step,
    required this.stepNumber,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pasul $stepNumber din $totalSteps',
              style: const TextStyle(
                fontSize: 16,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              step.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(AppTheme.paddingLarge),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppTheme.cardBorderRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                step.description,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  color: AppTheme.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
