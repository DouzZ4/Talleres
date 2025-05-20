import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taller_practico1/features/home/presentation/providers/counter_provider.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>().counter.value;

    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pantalla de perfil'),
            SizedBox(height: 20),
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
