import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'screens/home_screen.dart';
import 'common/app_strings.dart';
import 'common/app_theme.dart';
import 'utils/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configurăm URL strategy pentru web
  usePathUrlStrategy();

  // Inițializăm serviciul de notificări
  await NotificationService().initialize();

  runApp(const QuickBiteApp());
}

/// Widget principal al aplicației - StatelessWidget
class QuickBiteApp extends StatelessWidget {
  const QuickBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
