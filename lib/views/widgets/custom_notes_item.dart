import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: Text(note.subTitle,style: TextStyle(
                  fontSize: 20,
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(.5)
                ),),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: IconButton(
                  onPressed: (){
                    note.delete();
                     context.read<NotesCubit>().fetchAllNotes();
                  },
                   icon: FaIcon(FontAwesomeIcons.trash,color: const Color.fromARGB(255, 226, 2, 2),size: 28,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(
                fontSize: 16,
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(.4)
              ),),
            )
          ],
        ),
      
      ),
    );
  }
}