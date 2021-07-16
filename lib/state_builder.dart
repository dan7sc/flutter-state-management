import 'package:flutter/material.dart';

class StateBuilder extends StatefulWidget {
  final Widget child;
  const StateBuilder({Key? key, required this.child}) : super(key: key);

  @override
  _StateBuilderState createState() => _StateBuilderState();
}

class _StateBuilderState extends State<StateBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
