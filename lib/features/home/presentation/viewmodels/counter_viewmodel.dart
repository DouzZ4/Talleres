import 'package:flutter/material.dart';
import '../../data/counter_repository_impl.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterRepositoryImpl _repository;

  CounterViewModel(this._repository);

  int get counter => _repository.getCurrent();

  void increment() {
    _repository.IncrementCounter();
    notifyListeners();
  }

  void decrement() {
    _repository.DecrementCounter();
    notifyListeners();
  }
}
