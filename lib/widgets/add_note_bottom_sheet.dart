import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          builder: (BuildContext context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(child: AddNoteForm()),
            );
          },
          listener: (BuildContext context, state) {
            if (state is AddNoteFailure) {
              log("Failed ${state.errMessage}");
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
