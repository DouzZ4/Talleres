import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/presentation/providers/counter_provider.dart';
import 'features/home/presentation/screens/home_screen.dart';
import 'features/profile/presentation/screens/profile_screen.dart';
import 'features/settings/presentation/screens/settings_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Escalada',
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/profile': (_) => ProfileScreen(),
        '/settings': (_) => SettingsScreen(),
      },
    );
  }
}
