import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../styles/app_styles.dart';

class ExpansionPanelListWidget extends StatefulWidget {
  const ExpansionPanelListWidget({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListWidget> createState() =>
      _ExpansionPanelListWidgetState();
}

class _ExpansionPanelListWidgetState extends State<ExpansionPanelListWidget> {
  final List<Item> _items = [
    Item(
      header: 'What is an ExpansionPanel?',
      body:
      'An ExpansionPanel is a Flutter widget that allows you to expand or collapse content within a list. It is useful for displaying a lot of information in a compact and user-friendly way.',
    ),
    Item(
      header: 'Where is ExpansionPanelList used?',
      body:
      'The ExpansionPanelList widget wraps multiple ExpansionPanel widgets. It is commonly used in settings pages, FAQs, or anywhere grouped content needs to be shown and hidden interactively.',
    ),
    Item(
      header: 'How does expansion work in Flutter?',
      body:
      'Each ExpansionPanel has a boolean flag called `isExpanded` that controls whether the panel is open or closed. This value must be updated inside a setState() call to reflect changes in the UI.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 2,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _items[index].isExpanded = isExpanded;
          });
        },
        children: _items.asMap().entries.map<ExpansionPanel>((entry) {
          int index = entry.key;
          Item item = entry.value;

          return ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.header, style: AppStyles.panelHeader),
                trailing: item.isExpanded
                    ? const Icon(Icons.keyboard_arrow_up)
                    : const SizedBox.shrink(), // No icon if collapsed
              );
            },
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: Colors.grey[100],
              child: Text(item.body, style: AppStyles.panelBody),
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
