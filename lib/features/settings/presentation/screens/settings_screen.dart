import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/../features/home/presentation/providers/counter_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>().counter.value;

    return Scaffold(
      appBar: AppBar(title: Text('Configuración')),
      body: Center(
        child: Text(
          'Contador actual: $counter',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
