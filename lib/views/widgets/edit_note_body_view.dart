
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(text: 'Edit Note', icon: Icons.check,),
        ],
      ),
    );
  }
}