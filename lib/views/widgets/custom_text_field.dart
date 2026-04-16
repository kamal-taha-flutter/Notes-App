
import 'package:flutter/material.dart';
import 'package:notes_app/utils/app_constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLines = 1 });
final String text;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: TextStyle(color: AppConstant.primaryColor,fontSize: 20),
      cursorColor: AppConstant.primaryColor,
      decoration: InputDecoration(
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(16)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color:AppConstant.primaryColor
          ),
          borderRadius: BorderRadius.circular(16)
        ),
        
        hintText: text,
        hintStyle: TextStyle(color: AppConstant.primaryColor,fontSize: 20),
        
      ),
    );
  }
}