import '../entities/counter.dart';
import '../../data/counter_repository_impl.dart';

class IncrementCounter {
  final CounterRepositoryImpl _repo;
  IncrementCounter(this._repo);
  Counter call() {
    _repo.IncrementCounter();
    final newValue = _repo.getCurrent();
    return Counter(newValue);
  }
}
