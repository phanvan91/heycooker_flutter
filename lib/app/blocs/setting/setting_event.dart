part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.toggleDarkMode() = _ToggleDarkMode;
  const factory SettingEvent.changeLanguage(String language) = _ChangeLanguage;
  const factory SettingEvent.setFirstLaunch(bool isFirst) = _SetFirstLaunch;
  const factory SettingEvent.toggleNotification() = _ToggleNotification;
}
