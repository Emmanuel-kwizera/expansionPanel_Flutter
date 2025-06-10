import 'package:flutter/material.dart';
import '../widgets/expansion_panel_list_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionPanel Example'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: ExpansionPanelListWidget(),
      ),
    );
  }
}
