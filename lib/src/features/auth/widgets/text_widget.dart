import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/src/core/const/colors/app_colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key,this.hintText,  this.keybordtype,required this.textInputAction, this.inputFomat ,  this.controller, this.validator, this.prefix, this.suffix, required this.labelText, });
  final String? hintText;

  final TextInputType? keybordtype;
  final TextInputAction textInputAction;
  final String? inputFomat;
  final TextEditingController? controller;
  final String  labelText ;  final String? Function(String?)? validator;
final Widget? prefix, suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
     obscureText: false,
      validator:validator,
      
      keyboardType:keybordtype ,
      textInputAction: textInputAction,
     
      decoration: InputDecoration(
        labelText: labelText,
        
       prefixIcon: prefix ,
        suffixIcon: suffix,
        hintText:hintText ,


focusedBorder:  UnderlineInputBorder(borderSide:BorderSide(color: AppColors.primary)),
        border: UnderlineInputBorder(borderSide: BorderSide(color:AppColors.green )),

        errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.red))
      ),
    );
  }
}