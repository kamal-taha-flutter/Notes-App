
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
        child: AddNoteField(),
      ),
    );
  }
}

class AddNoteField extends StatefulWidget {
  const AddNoteField({
    super.key,
  });

  @override
  State<AddNoteField> createState() => _AddNoteFieldState();
}

class _AddNoteFieldState extends State<AddNoteField> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey =GlobalKey();
    AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
    String? title ,subTitle;
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Gap(40),
          CustomTextField(text: 'Title',
          onSaved: (value){
            title =value;
          },),
          Gap(20),
          CustomTextField(text: 'Content',maxLines: 5,onSaved: (value){
            subTitle =value;
          },),
          Gap(40),
          CustomButton(text: 'Add', 
          ontap: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{          
              setState(() {
                autovalidateMode =AutovalidateMode.always;
              });
            }
          },),
          Gap(60),
        ],
      ),
    );
  }
}

