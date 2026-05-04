import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/gen/assets.gen.dart';
import 'package:news/src/core/const/colors/app_colors.dart';

class SetingDetail extends StatefulWidget {
  const SetingDetail({super.key});

  @override
  State<SetingDetail> createState() => _SetingDetailState();
}

class _SetingDetailState extends State<SetingDetail> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.icons.back),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Account',
                    style: GoogleFonts.artifika(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.smss, height: 20, width: 20),
                SizedBox(width: 10),
                Text(
                  GetStorage().read('Email') ?? '',
                  style: GoogleFonts.merriweather(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  GetStorage().read('password') ?? '',
                  style: GoogleFonts.merriweather(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 40),
            Image.asset(
              Assets.images.password.path,
              height: 40,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        )
        
      )
    );
  }
}
