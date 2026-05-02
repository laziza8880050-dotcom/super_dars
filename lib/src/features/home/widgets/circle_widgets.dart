import 'package:flutter/material.dart';
import 'package:news/src/core/const/colors/app_colors.dart';

class CircleWidgets extends StatelessWidget {
  const CircleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return    CircleAvatar(radius:3 ,backgroundColor: AppColors.primary,);
                                                 
  }
}