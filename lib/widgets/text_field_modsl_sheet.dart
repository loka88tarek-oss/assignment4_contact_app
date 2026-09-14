import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldOfModalSheet extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;

  const TextFieldOfModalSheet({
    super.key,required this.hintText, this.keyboardType=TextInputType.text, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.lightBlue,
      style: TextStyle(color: AppColors.lightBlue,fontSize: 16,fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        
        hint: Text(
          hintText,
          style: TextStyle(color: AppColors.lightBlue,fontSize: 16,fontWeight: FontWeight.w400),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.gold),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.gold),
        ),
      ),
    );
  }
}