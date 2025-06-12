import '../entities/counter.dart';
import '../../data/counter_repository_impl.dart';

class DecrementCounter {
  final CounterRepositoryImpl _repo;
  DecrementCounter(this._repo);

  Counter call() {
    _repo.DecrementCounter();
    final newValue = _repo.getCurrent();
    return Counter(newValue);
  }
}
