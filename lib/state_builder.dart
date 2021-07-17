import 'package:class_state_management/controller.dart';
import 'package:flutter/material.dart';

class StateBuilder<T> extends StatefulWidget {
  final Widget child;

  final Controller<T> controller;
  StateBuilder({Key? key, required this.child, required this.controller}) : super(key: key);

  @override
  _StateBuilderState<T> createState() => _StateBuilderState<T>();
}

class _StateBuilderState<T> extends State<StateBuilder<T>> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
