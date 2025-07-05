import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [SizedBox(height: 32), CustomTextField()]),
    );
  }
}
