class CounterRepositoryImpl {
  int _value = 0;

  int getCurrent() => _value;
  void IncrementCounter() {
    _value++;
  }

  void DecrementCounter() {
    _value--;
  }
}
