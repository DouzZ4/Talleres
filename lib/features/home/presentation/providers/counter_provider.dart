import 'package:flutter/material.dart';
import '../../domain/entities/counter.dart';
import '../../domain/usecases/increment_counter.dart';

class CounterProvider extends ChangeNotifier {
  Counter _counter = Counter(0);
  final IncrementCounter _incrementCounter = IncrementCounter();

  Counter get counter => _counter;

  void increment() {
    _counter = _incrementCounter(_counter);
    notifyListeners();
  }
}
