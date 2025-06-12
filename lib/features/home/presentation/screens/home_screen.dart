import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../viewmodels/counter_rx_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterRxViewmodel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StreamBuilder<int>(
              stream: counter.counterStream,
              initialData: 0,
              builder:
              (_, snapshot) => Text(
                'Contador: ${snapshot.data}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
            CustomButton(
              label: 'Ir a Settings',
              icon: Icons.settings,
              onPressed: () => Navigator.pushNamed(context, '/settings'),
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Ir a Profile',
              icon: Icons.person,
              onPressed: () => Navigator.pushNamed(context, '/profile'),
            ),
            const Spacer(),
            CustomButton(
              label: 'Incrementar contador',
              icon: Icons.add,
              onPressed: () => counter.increment(),
            ),
            CustomButton(
              label: 'Disminuir contador',
              icon: Icons.remove,
              onPressed: () => counter.decrement(),
            ),
            CustomButton(
              label: 'Reset contador',
              icon: Icons.refresh,
              onPressed: () => counter.reset(),
            ),
            const SizedBox(height: 24),
            StreamBuilder<List<int>>(
              stream: counter.historyStream,
              initialData: const [0],
              builder: (_, snapshot) {
                final history = snapshot.data ?? [];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Historial de valores:', style: TextStyle(fontWeight: FontWeight.bold)),
                    ...history.reversed.map((v) => Text('• $v')).toList(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
  
}
