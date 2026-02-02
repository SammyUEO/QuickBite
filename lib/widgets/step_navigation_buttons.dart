import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';

class StepNavigationButtons extends StatelessWidget {
  final int currentStepIndex;
  final int totalSteps;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;
  final VoidCallback? onFinish;

  const StepNavigationButtons({
    super.key,
    required this.currentStepIndex,
    required this.totalSteps,
    this.onPrevious,
    this.onNext,
    this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          AppTheme.paddingLarge,
          AppTheme.paddingLarge,
          AppTheme.paddingLarge,
          AppTheme.paddingLarge + 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            if (currentStepIndex > 0)
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: onPrevious,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text(AppStrings.buttonPreviousStep),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: const BorderSide(color: AppTheme.primaryColor),
                  ),
                ),
              ),
            if (currentStepIndex > 0 && currentStepIndex < totalSteps - 1)
              const SizedBox(width: 16),
            if (currentStepIndex < totalSteps - 1)
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: onNext,
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text(AppStrings.buttonNextStep),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
            if (currentStepIndex == totalSteps - 1)
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: onFinish,
                  icon: const Icon(Icons.check_circle),
                  label: const Text('Finalizează'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
