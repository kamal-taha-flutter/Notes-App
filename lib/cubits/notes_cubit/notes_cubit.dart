import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/app_constant.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInit());
List<NoteModel>? notes;
Future<void> fetchAllNotes() async {
  emit(NotesLoading());

  var notesBox = Hive.box<NoteModel>(AppConstant.kNotesBox);
  notes = notesBox.values.toList();

  emit(NotesSuccess());
}
}
