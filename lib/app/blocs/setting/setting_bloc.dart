import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<SettingEvent>((event, emit) {
      event.map(
        toggleDarkMode: (e) => _onToggleDarkMode(e, emit),
        changeLanguage: (e) => _onChangeLanguage(e, emit),
        setFirstLaunch: (e) => _onSetFirstLaunch(e, emit),
        toggleNotification: (e) => _onToggleNotification(e, emit),
        changeStatusBarIcon: (e) => _onChangeStatusBarIcon(e, emit),
      );
    });
  }

  void _onToggleDarkMode(SettingEvent event, Emitter<SettingState> emit) {
    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }

  void _onChangeLanguage(SettingEvent event, Emitter<SettingState> emit) {
    // final language = event.map(
    //   toggleDarkMode: (_) => state.language,
    //   changeLanguage: (e) => e.language,
    //   setFirstLaunch: (_) => state.language,
    //   toggleNotification: (_) => state.language,
    // );
    // emit(state.copyWith(language: language));
  }

  void _onSetFirstLaunch(SettingEvent event, Emitter<SettingState> emit) {
    // final isFirst = event.map(
    //   toggleDarkMode: (_) => state.isFirstLaunch,
    //   changeLanguage: (_) => state.isFirstLaunch,
    //   setFirstLaunch: (e) => e.isFirst,
    //   toggleNotification: (_) => state.isFirstLaunch,
    // );
    // emit(state.copyWith(isFirstLaunch: isFirst));
  }

  void _onToggleNotification(SettingEvent event, Emitter<SettingState> emit) {
    emit(state.copyWith(isNotificationEnabled: !state.isNotificationEnabled));
  }

  void _onChangeStatusBarIcon (event, emit) {
    emit(state.copyWith(statusBarIconBrightness: event.status));
  }
}