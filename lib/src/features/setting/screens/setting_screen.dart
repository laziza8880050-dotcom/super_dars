import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/gen/assets.gen.dart';

import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/core/router/app_pages.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentGeometry.topLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                'Settings',
                style: GoogleFonts.artifika(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 28),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppPages.settingdetail);
                },
                child: Image.asset(
                  Assets.images.account.path,
                  height: 40,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                Assets.images.push.path,
                height: 40,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Image.asset(
                Assets.images.a.path,
                height: 40,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Image.asset(
                Assets.images.about.path,
                height: 40,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              InkWell(
                onTap: () async {
                  await GetStorage().erase();

                  Navigator.pushNamed(context, AppPages.sign);
                },
                child: Image.asset(
                  Assets.images.log.path,
                  height: 40,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
