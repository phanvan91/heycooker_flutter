part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isDarkMode,
    @Default('en') String language,
    @Default(false) bool isFirstLaunch,
    @Default(true) bool isNotificationEnabled,
    @Default('dark') String statusBarIconBrightness,
  }) = _SettingState;
}