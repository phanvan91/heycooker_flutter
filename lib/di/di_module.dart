import 'package:heycooker_flutter/di/di_module.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:heycooker_flutter/app/blocs/setting/setting_bloc.dart';
import '../app/routes/app_route.dart';

@injectableInit
Future<void> getItInitial() async {
  await GetIt.I.init(environment: 'selectServices');
}

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  @singleton
  AppRouter get appRouter => AppRouter();
}