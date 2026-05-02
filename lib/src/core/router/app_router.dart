import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/main_screen.dart';
import 'package:news/src/core/router/app_pages.dart';
import 'package:news/src/features/auth/screens/sign_up.dart';
import 'package:news/src/features/home/model/new_model.dart';
import 'package:news/src/features/home/screens/detail_screen.dart';
import 'package:news/src/features/home/screens/home_screen.dart';
import 'package:news/src/features/home/screens/search.dart';
import 'package:news/src/features/setting/screens/izbr.dart';
import 'package:news/src/features/setting/screens/seting_detail.dart';
import 'package:news/src/features/setting/screens/setting_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppPages.home:
        return onPage(HomeScreen());
    }
    switch (settings.name) {
      case AppPages.sign:
        return onPage(SignUp());
    }
    switch(settings.name){
      case AppPages.search :
      return onPage(Search());
    }
     switch(settings.name){
      case AppPages.detail  :
      return onPage(DetailScreen(articles: settings.arguments as Article,));
    }
     switch(settings.name){
      case AppPages.izbr :
      return onPage(Izbr());
    }
     switch(settings.name){
      case AppPages.main :
      return onPage(MainScreen());
    }
    switch(settings.name){
     case AppPages.settingd:
      return onPage(SettingScreen());
   }
   switch(settings.name){
    case AppPages.settingdetail:
    return onPage(SetingDetail());
   }

    

    
  }

  static MaterialPageRoute<dynamic> onPage(Widget page) =>
      MaterialPageRoute(builder: (context) => page);
}


 // switch(settings.name){
  //    case AppPages.settingd:
    //  return onPage(SettingScreen());
   // }