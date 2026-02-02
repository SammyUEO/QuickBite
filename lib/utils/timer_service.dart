import 'dart:async';
import 'package:flutter/services.dart';
import '../models/food_item.dart';
import 'notification_service.dart';

/// Informații despre un timer activ
class ActiveTimer {
  final String foodName;
  final int stepIndex;
  final String stepTitle;
  int secondsRemaining;
  Timer? timer;

  ActiveTimer({
    required this.foodName,
    required this.stepIndex,
    required this.stepTitle,
    required this.secondsRemaining,
    this.timer,
  });
}

/// Serviciu global pentru gestionarea timerelor care persistă între ecrane
class TimerService {
  static final TimerService _instance = TimerService._internal();
  factory TimerService() => _instance;
  TimerService._internal();

  // Map pentru timere active: key = "foodName_stepIndex"
  final Map<String, ActiveTimer> _activeTimers = {};

  // Stream pentru a notifica UI-ul când se schimbă timerele
  final _timersController =
      StreamController<Map<String, ActiveTimer>>.broadcast();
  Stream<Map<String, ActiveTimer>> get timersStream => _timersController.stream;

  /// Pornește un timer pentru un pas specific
  void startTimer({
    required String foodName,
    required int stepIndex,
    required String stepTitle,
    required int minutes,
  }) {
    final key = '${foodName}_$stepIndex';

    // Dacă există deja un timer pentru acest pas, îl oprim
    if (_activeTimers.containsKey(key)) {
      _activeTimers[key]?.timer?.cancel();
    }

    // Creăm noul timer
    final activeTimer = ActiveTimer(
      foodName: foodName,
      stepIndex: stepIndex,
      stepTitle: stepTitle,
      secondsRemaining: minutes * 60,
    );

    activeTimer.timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (activeTimer.secondsRemaining > 0) {
        activeTimer.secondsRemaining--;
        _timersController.add(_activeTimers);
      } else {
        _onTimerFinished(key, activeTimer);
      }
    });

    _activeTimers[key] = activeTimer;
    _timersController.add(_activeTimers);
  }

  /// Oprește un timer specific
  void stopTimer(String foodName, int stepIndex) {
    final key = '${foodName}_$stepIndex';
    _activeTimers[key]?.timer?.cancel();
    _activeTimers.remove(key);
    _timersController.add(_activeTimers);
  }

  /// Verifică dacă un timer este activ pentru un pas specific
  bool isTimerActive(String foodName, int stepIndex) {
    final key = '${foodName}_$stepIndex';
    return _activeTimers.containsKey(key);
  }

  /// Obține secundele rămase pentru un timer specific
  int getSecondsRemaining(String foodName, int stepIndex) {
    final key = '${foodName}_$stepIndex';
    return _activeTimers[key]?.secondsRemaining ?? 0;
  }

  /// Obține toate timerele active pentru o rețetă
  List<ActiveTimer> getTimersForFood(String foodName) {
    return _activeTimers.entries
        .where((entry) => entry.key.startsWith('${foodName}_'))
        .map((entry) => entry.value)
        .toList()
      ..sort((a, b) => a.stepIndex.compareTo(b.stepIndex));
  }

  /// Obține toate timerele active
  Map<String, ActiveTimer> getAllActiveTimers() {
    return Map.from(_activeTimers);
  }

  /// Numărul total de timere active
  int get activeTimerCount => _activeTimers.length;

  void _onTimerFinished(String key, ActiveTimer activeTimer) {
    // Vibrație puternică
    HapticFeedback.heavyImpact();
    Future.delayed(const Duration(milliseconds: 100), () {
      HapticFeedback.heavyImpact();
    });
    Future.delayed(const Duration(milliseconds: 200), () {
      HapticFeedback.heavyImpact();
    });

    // Trimite notificare
    NotificationService().showTimerFinishedNotification(
      stepNumber: activeTimer.stepIndex + 1,
      stepTitle: activeTimer.stepTitle,
      foodName: activeTimer.foodName,
    );

    // Oprește și șterge timerul
    activeTimer.timer?.cancel();
    _activeTimers.remove(key);
    _timersController.add(_activeTimers);
  }

  /// Oprește toate timerele
  void stopAllTimers() {
    for (var timer in _activeTimers.values) {
      timer.timer?.cancel();
    }
    _activeTimers.clear();
    _timersController.add(_activeTimers);
  }

  /// Curăță resursele
  void dispose() {
    stopAllTimers();
    _timersController.close();
  }
}
