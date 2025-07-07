import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_widgets/custom_text_form_field.dart';

import 'custom_widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 60),
            CustomAppBar(title: "Edit Note", icon: Icons.check),
            SizedBox(height: 50),
            CustomTextFormField(hint: "Title"),
            SizedBox(height: 30),
            CustomTextFormField(hint: "Content", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
