import 'package:flutter/material.dart';
import '../models/food_item.dart';

class BackgroundTimerIndicator extends StatelessWidget {
  final int timerStepIndex;
  final List<CookingStep> steps;
  final int secondsRemaining;
  final VoidCallback onStop;
  final String Function(int) formatTime;

  const BackgroundTimerIndicator({
    super.key,
    required this.timerStepIndex,
    required this.steps,
    required this.secondsRemaining,
    required this.onStop,
    required this.formatTime,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.amber[700]!, width: 2),
          ),
          child: Row(
            children: [
              Icon(Icons.timer, color: Colors.amber[900], size: 32),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Timer activ pentru Pasul ${timerStepIndex + 1}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber[900],
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      steps[timerStepIndex].title,
                      style: TextStyle(color: Colors.amber[800], fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Column(
                children: [
                  Text(
                    formatTime(secondsRemaining),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[900],
                    ),
                  ),
                  TextButton(onPressed: onStop, child: const Text('Stop')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
