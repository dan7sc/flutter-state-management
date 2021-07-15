class Controller<T> {
  final T state;
  Function(T)? _listeners;
  Controller(
    this.state,
  );

  void listen(Function(T) listener) {
    _listeners = listener;
  }
}
