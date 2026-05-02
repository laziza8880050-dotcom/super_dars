import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/gen/assets.gen.dart';

class share extends StatelessWidget {
  const share({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 16,),
      SvgPicture.asset(  Assets.icons.back,height: 24,width: 24,),
      Spacer(),
      SvgPicture.asset(  Assets.icons.izbr,height: 24,width: 24,),
      SizedBox(width: 22,),
      SvgPicture.asset(  Assets.icons.share, height: 24,width: 24,),
      SizedBox(width: 16,)
    ],);
  }
}