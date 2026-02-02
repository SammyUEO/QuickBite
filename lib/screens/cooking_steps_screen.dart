import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/food_item.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';
import '../widgets/cooking_timer_widget.dart';
import '../widgets/background_timer_indicator.dart';
import '../widgets/step_navigation_buttons.dart';
import '../widgets/step_content_card.dart';
import '../utils/timer_service.dart';

/// Ecran pentru pașii de preparare cu timer integrat
class CookingStepsScreen extends StatefulWidget {
  final FoodItem food;
  final int? initialStepIndex;

  const CookingStepsScreen({
    super.key,
    required this.food,
    this.initialStepIndex,
  });

  @override
  State<CookingStepsScreen> createState() => _CookingStepsScreenState();
}

class _CookingStepsScreenState extends State<CookingStepsScreen> {
  int currentStepIndex = 0;
  late StreamSubscription _timerSubscription;

  @override
  void initState() {
    super.initState();
    // Setăm pasul inițial dacă este specificat
    if (widget.initialStepIndex != null) {
      currentStepIndex = widget.initialStepIndex!;
    }
    // Ascultăm la schimbări în timere pentru a actualiza UI-ul
    _timerSubscription = TimerService().timersStream.listen((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timerSubscription.cancel();
    // NU oprim timerele aici - ele continuă să ruleze în fundal
    super.dispose();
  }

  void _startTimer(int minutes, int stepIndex) {
    TimerService().startTimer(
      foodName: widget.food.name,
      stepIndex: stepIndex,
      stepTitle: widget.food.steps[stepIndex].title,
      minutes: minutes,
    );
  }

  void _stopTimer(int stepIndex) {
    TimerService().stopTimer(widget.food.name, stepIndex);
  }

  bool _isTimerRunningForStep(int stepIndex) {
    return TimerService().isTimerActive(widget.food.name, stepIndex);
  }

  int _getSecondsForStep(int stepIndex) {
    return TimerService().getSecondsRemaining(widget.food.name, stepIndex);
  }

  List<int> _getActiveTimerSteps() {
    return TimerService()
        .getTimersForFood(widget.food.name)
        .map((timer) => timer.stepIndex)
        .toList();
  }

  void _nextStep() {
    if (currentStepIndex < widget.food.steps.length - 1) {
      setState(() {
        currentStepIndex++;
        // Timer-ul continuă să ruleze în fundal
      });
    }
  }

  void _previousStep() {
    if (currentStepIndex > 0) {
      setState(() {
        currentStepIndex--;
        // Timer-ul continuă să ruleze în fundal
      });
    }
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('🎉 Felicitări!'),
        content: Text('Ai terminat de gătit ${widget.food.name}!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('Gata'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.food.steps.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pași Preparare'),
          backgroundColor: AppTheme.primaryColor,
        ),
        body: const Center(
          child: Text('Nu există pași de preparare disponibili.'),
        ),
      );
    }

    final currentStep = widget.food.steps[currentStepIndex];

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text(widget.food.name),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Progress indicator
          LinearProgressIndicator(
            value: (currentStepIndex + 1) / widget.food.steps.length,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
            minHeight: 8,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppTheme.paddingLarge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StepContentCard(
                      step: currentStep,
                      stepNumber: currentStepIndex + 1,
                      totalSteps: widget.food.steps.length,
                    ),
                    const SizedBox(height: 32),
                    CookingTimerWidget(
                      step: currentStep,
                      isTimerRunning: _isTimerRunningForStep(currentStepIndex),
                      isCurrentStep: true,
                      secondsRemaining: _getSecondsForStep(currentStepIndex),
                      onStart: () => _startTimer(
                        currentStep.timerMinutes!,
                        currentStepIndex,
                      ),
                      onStop: () => _stopTimer(currentStepIndex),
                      formatTime: _formatTime,
                    ),
                    if (currentStep.timerMinutes != null)
                      const SizedBox(height: 32),
                    // Afișare toate timerele active din fundal
                    ..._getActiveTimerSteps()
                        .where((stepIndex) => stepIndex != currentStepIndex)
                        .map(
                          (stepIndex) => Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: BackgroundTimerIndicator(
                              timerStepIndex: stepIndex,
                              steps: widget.food.steps,
                              secondsRemaining: _getSecondsForStep(stepIndex),
                              onStop: () => _stopTimer(stepIndex),
                              formatTime: _formatTime,
                            ),
                          ),
                        ),
                  ],
                ),
              ),
            ),
          ),

          StepNavigationButtons(
            currentStepIndex: currentStepIndex,
            totalSteps: widget.food.steps.length,
            onPrevious: _previousStep,
            onNext: _nextStep,
            onFinish: () {
              HapticFeedback.mediumImpact();
              _showCompletionDialog();
            },
          ),
        ],
      ),
    );
  }
}
