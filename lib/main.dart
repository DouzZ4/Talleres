import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/service_locator.dart';
import 'package:taller_practico1/features/home/presentation/screens/home_screen.dart';
import 'package:taller_practico1/features/profile/presentation/screens/profile_screen.dart';
import 'package:taller_practico1/features/settings/presentation/screens/settings_screen.dart';
import 'features/home/presentation/viewmodels/counter_rx_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<CounterRxViewmodel>(
      create: (_) => sl<CounterRxViewmodel>(),
      dispose: (_, vm) => vm.dispose(),
      child: MaterialApp(
        title: 'Taller Flutter Escalado',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
        initialRoute: '/',
        routes: {
          '/': (_) => const HomePage(),
          '/settings': (_) => const SettingsScreen(),
          '/profile': (_) => const ProfileScreen(),
        },
      ),
    ); 
  } 
}
