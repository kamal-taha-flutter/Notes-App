import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Gap(40),
          CustomTextField(
            text: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          Gap(20),
          CustomTextField(
            text: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          Gap(40),
          BlocBuilder<AddNoteCubit,AddNoteState>(
            builder: (BuildContext context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true:false,
                text: 'Add',
                ontap: () {
                  if (!formKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                    return; 
                  } 
                  formKey.currentState!.save();
                   String formattedDate = DateFormat('MMM d, yyyy').format(DateTime.now());
                  var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: formattedDate,
                    color: Colors.blue.value,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  
                },
              );
            },
          ),
          Gap(60),
        ],
      ),
    );
  }
}
