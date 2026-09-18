import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_project/core/cubit/theme/theme_state.dart';
import 'app/app_routes.dart';
import 'core/cubit/theme/theme_cubit.dart';
import 'core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemeCubic(),
        child: BlocBuilder<ThemeCubic, ThemeState>
          (builder: (context, state) {
          return MaterialApp.router(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: state.isDark ? AppTheme().darktheme : AppTheme()
                  .lighttheme,
              routerConfig: AppRouter.appRouter
              );
            },
          ),
        );
  }
}
