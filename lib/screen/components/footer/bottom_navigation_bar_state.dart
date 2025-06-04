part of 'bottom_navigation_bar_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({
    @Default(0) int selectedIndex,
  }) = _BottomNavigationState;
}