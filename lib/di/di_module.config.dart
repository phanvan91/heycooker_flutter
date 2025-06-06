// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:heycooker_flutter/app/blocs/setting/setting_bloc.dart' as _i504;
import 'package:heycooker_flutter/app/routes/app_route.dart' as _i877;
import 'package:heycooker_flutter/di/di_module.dart' as _i943;
import 'package:heycooker_flutter/screen/components/footer/bottom_navigation_bar_bloc.dart'
    as _i182;
import 'package:heycooker_flutter/utils/log/logger.dart' as _i620;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i504.SettingBloc>(() => _i504.SettingBloc());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i182.BottomNavigationBloc>(() => _i182.BottomNavigationBloc());
    gh.singleton<_i877.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i620.AppLogger>(() => _i620.AppLogger());
    return this;
  }
}

class _$RegisterModule extends _i943.RegisterModule {}
