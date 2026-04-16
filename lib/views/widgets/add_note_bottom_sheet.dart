
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(40),
            CustomTextField(text: 'Title',),
            Gap(20),
            CustomTextField(text: 'Content',maxLines: 5,),
            Gap(40),
            CustomButton(text: 'Add', ontap: () {},),
            Gap(60),
          ],
        ),
      ),
    );
  }
}

