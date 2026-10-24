import 'package:flutter/material.dart';

import '../widgets/entries_list.dart';
import '../widgets/text_input_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _entries = [];

  void _addEntry(String text) {
    setState(() {
      _entries.insert(0, text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input App'),
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      body: Column(
        children: [
          TextInputForm(onSubmit: _addEntry),
          Expanded(child: EntriesList(entries: _entries)),
        ],
      ),
    );
  }
}
