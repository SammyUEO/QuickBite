import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/foundation.dart';
import 'dart:typed_data';

/// Serviciu pentru gestionarea notificărilor locale
class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  /// Inițializează serviciul de notificări
  Future<void> initialize() async {
    if (_initialized) return;

    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const initSettings = InitializationSettings(android: androidSettings);

    final granted = await _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.requestNotificationsPermission();

    if (granted != true) {
      if (kDebugMode) {
        print('Permisiune notificări refuzată');
      }
      return;
    }

    await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) {
        if (kDebugMode) {
          print('Notificare apăsată: ${details.payload}');
        }
      },
    );

    _initialized = true;
  }

  /// Afișează o notificare pentru timer terminat
  Future<void> showTimerFinishedNotification({
    required int stepNumber,
    required String stepTitle,
    required String foodName,
  }) async {
    if (!_initialized) {
      await initialize();
    }

    final androidDetails = AndroidNotificationDetails(
      'cooking_timer_channel',
      'Timer Gătit',
      channelDescription: 'Notificări pentru timer-ul de gătit',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      vibrationPattern: Int64List.fromList([
        0,
        500,
        200,
        500,
        200,
        500,
      ]), // Pattern puternic de vibrație
      playSound: true,
      icon: '@mipmap/ic_launcher',
      fullScreenIntent: true, // Pentru a afișa pe ecranul blocat
    );

    final notificationDetails = NotificationDetails(android: androidDetails);

    await _notifications.show(
      stepNumber, // ID unic pe baza numărului pasului
      '⏰ Timer Terminat!',
      'Pasul $stepNumber din $foodName este gata: "$stepTitle"',
      notificationDetails,
      payload: 'timer_$stepNumber',
    );
  }

  /// Anulează toate notificările
  Future<void> cancelAll() async {
    await _notifications.cancelAll();
  }

  /// Anulează o notificare specifică
  Future<void> cancel(int id) async {
    await _notifications.cancel(id);
  }
}
