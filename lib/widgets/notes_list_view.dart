import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_widgets/custom_list_tile.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: CustomListTile(),
          );
        },
      ),
    );
  }
}
