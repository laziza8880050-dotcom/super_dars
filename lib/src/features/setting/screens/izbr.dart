import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:news/gen/assets.gen.dart';

class Izbr extends StatefulWidget {
  const Izbr({super.key});

  @override
  State<Izbr> createState() => _IzbrState();
}

class _IzbrState extends State<Izbr> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:  Center(child:  Lottie.asset(
                    Assets.lotties.noDataFound,
                    height: 300,
                    width: 300,
                  ),),);
  }
}