import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>().counter.value;

    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: GestureDetector(
        onTap: () {
          context.read<CounterProvider>().increment();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $counter', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/profile'),
                child: Text('Ir a Perfil'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/settings'),
                child: Text('Ir a Configuración'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
