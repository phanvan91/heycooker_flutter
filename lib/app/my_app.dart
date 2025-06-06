import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';
import 'blocs/setting/setting_bloc.dart';
import '../app/routes/app_route.dart';
import '../screen/components/footer/bottom_navigation_bar_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.I<SettingBloc>()),
        BlocProvider(create: (_) => GetIt.I<BottomNavigationBloc>()),
      ],
      child: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: state.statusBarIconBrightness == 'dark'
                  ? Brightness.dark
                  : Brightness.light,
              statusBarBrightness: Brightness.dark,
            ),
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: '함께하는 서비스',
              theme: ThemeData(
                fontFamily: 'NotoSansKR',
              ),
              routerConfig: GetIt.I<AppRouter>().config(),
            ),
          );
        },
      ),
    );
  }
}
