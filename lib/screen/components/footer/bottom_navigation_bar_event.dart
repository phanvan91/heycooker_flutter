part of 'bottom_navigation_bar_bloc.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.onItemSelected(int selectedIndex) = _onItemSelected;
  const factory BottomNavigationEvent.onAiChefTapped() = _onAiChefTapped;
}
