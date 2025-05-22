class DecrementCounter {
  void call(int currentValue, void Function(int) updateValue) {
    updateValue(currentValue - 1);
  }
}
