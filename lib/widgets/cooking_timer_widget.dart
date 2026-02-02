import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';

class CookingTimerWidget extends StatelessWidget {
  final CookingStep step;
  final bool isTimerRunning;
  final bool isCurrentStep;
  final int secondsRemaining;
  final VoidCallback onStart;
  final VoidCallback onStop;
  final String Function(int) formatTime;

  const CookingTimerWidget({
    super.key,
    required this.step,
    required this.isTimerRunning,
    required this.isCurrentStep,
    required this.secondsRemaining,
    required this.onStart,
    required this.onStop,
    required this.formatTime,
  });

  @override
  Widget build(BuildContext context) {
    if (step.timerMinutes == null) return const SizedBox.shrink();

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(AppTheme.paddingLarge),
        decoration: BoxDecoration(
          color: isTimerRunning && isCurrentStep
              ? Colors.orange[100]
              : Colors.blue[50],
          borderRadius: BorderRadius.circular(AppTheme.cardBorderRadius),
          border: Border.all(
            color: isTimerRunning && isCurrentStep
                ? AppTheme.primaryColor
                : Colors.blue[200]!,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.timer,
              size: 48,
              color: isTimerRunning && isCurrentStep
                  ? AppTheme.primaryColor
                  : Colors.blue[700],
            ),
            const SizedBox(height: 12),
            if (isTimerRunning && isCurrentStep) ...[
              Text(
                formatTime(secondsRemaining),
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: onStop,
                icon: const Icon(Icons.stop),
                label: const Text(AppStrings.buttonStopTimer),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
              ),
            ] else ...[
              Text(
                '${step.timerMinutes} minute',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: onStart,
                icon: const Icon(Icons.play_arrow),
                label: const Text(AppStrings.buttonStartTimer),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
