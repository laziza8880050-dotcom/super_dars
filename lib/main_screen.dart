import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:news/gen/assets.gen.dart';
import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/features/home/screens/home_screen.dart';
import 'package:news/src/features/home/screens/search.dart';
import 'package:news/src/features/setting/screens/izbr.dart';
import 'package:news/src/features/setting/screens/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = [HomeScreen(), Search(),Izbr(),SettingScreen()];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: AppColors.wight,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
       
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.wight,
            label: '',
            icon:SvgPicture.asset(Assets.icons.home)
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(Assets.icons.searchUnselected)
          ),
          BottomNavigationBarItem(
            label: '',
            icon:SvgPicture.asset(Assets.icons.smss)
          ),
 BottomNavigationBarItem(
            label: '',
            icon:SvgPicture.asset(Assets.icons.settings)
           
          ),


         
        ],
      ),);
}
}
