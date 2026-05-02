import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:news/gen/assets.gen.dart';
import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/features/home/cubit/home_cubit.dart';
import 'package:news/src/features/home/cubit/home_state.dart';
import 'package:news/src/features/home/widgets/app_widgets.dart';
import 'package:news/src/features/home/widgets/circle_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 150),
                    SvgPicture.asset(Assets.icons.miniLogo),
                    SizedBox(width: 116),
                    SvgPicture.asset(Assets.icons.sms),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppWidgets(
                  newType: ['apple', 'tesla', 'country', 'techcrunch', 'domains'],
                ),
              ),
              SizedBox(height: 27),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeLoadingState) {
                    return Center(
                      child: Lottie.asset(
                        'assets/lotties/Welcome.json',
                        height: 300,
                        width: 300,
                      ),
                    );
                  } else if (state is HomeLoadedState) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: state.news.articles.length > 10
                              ? 10
                              : state.news.articles.length,
                          itemBuilder: (text, index) {
                            return SlideInLeft(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(onTap: (){
                                  Navigator.pushNamed(context, '/datail', arguments: state.news.articles[index]);
                                },
                                  child: Container(
                                    height: 140,
                                    color: AppColors.wight,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            height: 140,
                                            width: 137,
                                            color: AppColors.lightgrey,
                                            child: Image.network(
                                              state
                                                      .news
                                                      .articles[index]
                                                      .urlToImage ??
                                                  "https://images.unsplash.com/photo-1561948955-570b270e7c36?q=80&w=601&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                              height: 140,
                                              width: 137,
                                              errorBuilder: (context, error, stackTrace) => Center(child: LottieBuilder.asset(Assets.lotties.noDataFound),),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.news.articles[index].title,
                                                maxLines: 3,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.primary,
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Text(state.news.articles[index].source?.name ?? 'no name',style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.grey,
                                                  ),),
                                                                      
                                              SizedBox( height: 3,),
                                              Row(
                                                  children: [
                                                    Text('News', style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.bold,
                                                            color: AppColors.blue,
                                                          ),),
                                                    SizedBox(width: 10,)  ,
                                                    CircleAvatar(radius: 6, backgroundColor: AppColors.grey,)  ,
                                                    SizedBox(width: 8.5,),
                                                    Text('45m ago', style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.grey,
                                                  ),),
                                                    Spacer(),
                                                  CircleWidgets() ,
                                                                                                 SizedBox(width: 3,), 
                                                                                                  CircleWidgets() ,
                                                                                                 SizedBox(width: 3,),
                                                                                                  CircleWidgets() ,
                                                                                                 SizedBox(width: 3,)
                                                                                                     ],
                                                )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Container(
                            height: 0.7,
                            color: AppColors.grey,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    );
                  } else if (state is HomeErrorState) {
                    return Center(child: Text(state.errorText));
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
