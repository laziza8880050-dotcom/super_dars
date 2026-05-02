import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/features/home/cubit/home_cubit.dart';
import 'package:news/src/features/home/cubit/home_state.dart';

class AppWidgets extends StatefulWidget {
  final List<String> newType;
  
  const AppWidgets({super.key, required this.newType, });

  @override
  State<AppWidgets> createState() => _AppWidgetsState();
}

class _AppWidgetsState extends State<AppWidgets> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 30,
          child: ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: widget.newType.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    context.read<HomeCubit>().newindex(index);
                    setState(() {});
                  },
                  child: Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(40)),
                    backgroundColor: state.newIndex == index
                        ? AppColors.primary
                        : AppColors.lightgrey,
                    label: Text(
                      widget.newType[index],
                      style: TextStyle(
                        color: state.newIndex == index
                            ? AppColors.wight
                            : AppColors.primary,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }
    );
  }
}
