import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/utils/app_constant.dart';
import 'package:notes_app/views/notes_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(AppConstant.kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: NotesView(),
    );
  }
}

