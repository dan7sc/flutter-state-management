import 'package:class_state_management/state_builder.dart';
import 'package:flutter/material.dart';

import 'home_count_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeCountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StateBuilder<int>(
        controller: controller,
        builder: (_, state) {
          if(state == 0) {
            return Center(
              child: Text("Nada aqui"),
            );
          }
          return Center(
            child: Text("COUNT: $state"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
