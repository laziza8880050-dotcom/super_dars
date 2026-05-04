import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/gen/assets.gen.dart';
import 'package:news/src/core/const/colors/app_colors.dart';
import 'package:news/src/core/router/app_pages.dart';
import 'package:news/src/features/auth/validators/app_validators.dart';
import 'package:news/src/features/auth/widgets/poloska.dart';
import 'package:news/src/features/auth/widgets/text_widget.dart';
import 'package:news/src/features/home/screens/home_screen.dart';

final box = GetStorage();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46),
          child: Column(
            children: [
              SizedBox(height: 125),
              Center(
                child: Image.asset(
                  Assets.images.logo.path,
                  height: 140,
                  width: 250,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 46),
              TextWidget(
                labelText: 'Email',
                validator: AppValidator.email,
                keybordtype: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: emailController,
              ),
              SizedBox(height: 25),
              TextWidget(
                labelText: 'Password',
                validator: AppValidator.password,
                controller: passwordController,
                suffix: Icon(Icons.remove_red_eye),
                keybordtype: TextInputType.emailAddress,
                textInputAction: TextInputAction.send,
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 48),
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await GetStorage().write('Email', emailController.text);
                      await GetStorage().write('password', passwordController.text);

                      print('saved email ${GetStorage().read('Email')}');

                      Navigator.pushNamed(context, AppPages.home);
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.wight,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Poloska(),
                  SizedBox(width: 5),
                  Text(
                    'or sign in with',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 5),
                  Poloska(),
                ],
              ),
              SizedBox(height: 50),
              Image.asset(
                Assets.images.vseIconki.path,
                width: double.infinity,
                height: 48,
              ),
              SizedBox(height: 62),
              Text(
                'By signing up to News24 you are accepting our \n                            Terms & Conditions',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
