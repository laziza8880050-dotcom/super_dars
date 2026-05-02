import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:news/gen/assets.gen.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Center(child:  Lottie.asset(
                    Assets.lotties.noDataFound,
                    height: 300,
                    width: 300,
                  ),),);
  }
}