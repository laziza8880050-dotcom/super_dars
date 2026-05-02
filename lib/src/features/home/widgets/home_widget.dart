import 'package:flutter/material.dart';
import 'package:news/src/core/const/colors/app_colors.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (text, index) {
            return Column(
              children: [
                Container(height: 5, color: AppColors.grey, width: double.infinity,),
                Container(
                  height: 140,
                  color: AppColors.wight,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(height: 140, width: 137, color: AppColors.red),
                      SizedBox(width: 10,),
                      Column(children: [ Text('Monarch population soars\n 4,900 percent since last year \nin thrilling 2021 western \nmigration', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary),)],)
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}//SizedBox(height: 150,width: double.infinity,
   ///               child: ListView.builder(
      
      //              scrollDirection: Axis.vertical,
        //            itemCount: state.news.articles.lenght > 10
          //              ? 10
            ////            : state.news.articles.lenght,
                //    itemBuilder: (context, index) {
                  //    return Container(height: 140, width:  double.infinity, color: AppColors.green,);
                    //},
                 // ),
                //);
    