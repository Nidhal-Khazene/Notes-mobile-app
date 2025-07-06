import 'package:flutter/material.dart';

import 'custom_widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomAppBar(title: "Edit Note", icon: Icons.check),
          ],
        ),
      ),
    );
  }
}
