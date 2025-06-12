import 'package:rxdart/rxdart.dart';
import '../../domain/usecases/increment_counter.dart';
import '../../domain/usecases/decrement_counter.dart';

class CounterRxViewmodel {
  CounterRxViewmodel(this._incrementUseCase, this._decrementUseCase) {
    _counterSubject.add(0);
    _history.add(0);
    _historySubject.add(List.unmodifiable(_history));
  }
  
  final IncrementCounter _incrementUseCase;
  final DecrementCounter _decrementUseCase;

  final _counterSubject = BehaviorSubject<int>();
  Stream<int> get counterStream => _counterSubject.stream;

  final List<int> _history = [];
  final _historySubject = BehaviorSubject<List<int>>();
  Stream<List<int>> get historyStream => _historySubject.stream;

  void _addToHistory(int value) {
    if (_history.length == 5) {
      _history.removeAt(0);
    }
    _history.add(value);
    _historySubject.add(List.unmodifiable(_history));
  }

  void increment() {
    final newValue = _incrementUseCase().value;
    _counterSubject.add(newValue);
    _addToHistory(newValue);
  }

  void decrement() {
    final newValue = _decrementUseCase().value;
    _counterSubject.add(newValue);
    _addToHistory(newValue);
  }

  void reset() {
    _counterSubject.add(0);
    _addToHistory(0);
  }

  void dispose() {
    _counterSubject.close();
    _historySubject.close();
  }
}
