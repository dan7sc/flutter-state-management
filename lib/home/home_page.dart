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
      body: StateBuilder<Ob>(
        controller: controller,
        builder: (_, state) {
          if(state.name.isNotEmpty && state.number.isNotEmpty) {
            return Center(
              child: Text("Name ${state.name}\nNumber ${state.number}"),
            );
          }
          return Center(
            child: Text("Empty"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.setName("Daniel");
          controller.setNumber("123");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
