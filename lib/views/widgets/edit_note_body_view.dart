
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(text: 'Edit Note', icon: Icons.check,),
          Gap(50),
          CustomTextField(text: 'Title'),
          Gap(20),
          CustomTextField(text: 'Content',maxLines: 5,),


        ],
      ),
    );
  }
}