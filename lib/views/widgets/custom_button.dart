
import 'package:flutter/material.dart';
import 'package:notes_app/utils/app_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.ontap});
final String text;
final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: AppConstant.primaryColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}