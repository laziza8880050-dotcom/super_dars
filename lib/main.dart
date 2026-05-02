import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';


import 'package:news/src/core/router/app_pages.dart';
import 'package:news/src/core/router/app_router.dart';

import 'package:news/src/features/home/cubit/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeCubit())],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: GetStorage().read('Email') != null ? AppPages.main: AppPages.sign,
    );
  }
}
// GetStorage().read('Email') !=null? HomeScreen():SignUp()