
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(text: 'Notes', icon: Icons.search,),
          Gap(20),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}