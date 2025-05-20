import '../entities/counter.dart';

class IncrementCounter {
  Counter call(Counter current) {
    return Counter(current.value + 1);
  }
}
