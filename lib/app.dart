import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/config/routes/app_routes.dart';
import 'package:pos/core/cubit/cubit.dart';
import 'package:pos/features/product/presentation/cubit/product_cubit.dart';

import 'core/cubit/cubit.dart';
import 'core/cubit/state.dart';
import 'core/di/injection.dart';

class PosApp extends StatelessWidget {
  final bool isRtl;

  const PosApp({Key? key, required this.isRtl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => sl<AppBloc>()
            ..setThemes(
              rtl: isRtl,
            ),
        ),
        BlocProvider(
          create: (context) => ProductCubit(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'POS',
            debugShowCheckedModeBanner: false,
            themeMode:
                AppBloc.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            theme: AppBloc.get(context).lightTheme,
            darkTheme: AppBloc.get(context).darkTheme,
            initialRoute: Routes.initialRoutes,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}

//*

// */
