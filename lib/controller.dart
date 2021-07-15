class Controller<T> {
  final T state;
  Function(T)? _listeners;
  Controller(
    this.state,
  );
}
