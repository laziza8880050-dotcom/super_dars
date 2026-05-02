import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/gen/assets.gen.dart';
import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/features/home/model/new_model.dart';

import 'package:share_plus/share_plus.dart';

class DetailScreen extends StatelessWidget {
    final Article  articles;
  const DetailScreen({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
          Row(children: [ SizedBox(width: 16,),
      InkWell(onTap: () {
        Navigator.pop(context);
      },  child: SvgPicture.asset(  Assets.icons.back,height: 24,width: 24,), ),
      Spacer(),
      SvgPicture.asset(  Assets.icons.izbr,height: 24,width: 24,),
      SizedBox(width: 22,),
      InkWell( onTap: () {
        print('ky');
        SharePlus.instance.share(
  ShareParams(text: 'оцени мой проект ${articles.url}')
);
        
      }, child: Column(
        children: [
          SizedBox(
            height: 30, width: 30, child: SvgPicture.asset(  Assets.icons.share, height: 24,width: 24,)),
        ],
      )),
      SizedBox(width: 16,)],),
            SizedBox(height: 20),
            Container(
              height: 229,
              width: double.infinity,
           child: Image.network(articles.urlToImage?? 'https://images.unsplash.com/photo-1574158622682-e40e69881006?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', fit: BoxFit.cover,),
            ),
            Text(articles.content ?? '', style: GoogleFonts.artifika(fontSize: 18, fontWeight: FontWeight.w700)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1777153200096-f68a98d12fa4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(articles.source?.name ?? 'no name', style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.grey,
                                                  ),),
                 Spacer(),
                  Text('35 min ago')
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text(articles.content ?? '', style: TextStyle(fontSize: 15, color: AppColors.primary),),
              Text(articles.description ?? '', style: TextStyle(fontSize: 15, color: AppColors.primary),)
          ],
        ),
      ),
    );
  }
}
