import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../viewmodels/counter_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterViewModel>().counter;

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Contador: $counter',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
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
              onPressed: () => context.read<CounterViewModel>().increment(),
            ),
            CustomButton(
              label: 'Disminuir contador',
              icon: Icons.remove,
              onPressed: () => context.read<CounterViewModel>().decrement(),
            ),
          ],
        ),
      ),
    );
  }
}
