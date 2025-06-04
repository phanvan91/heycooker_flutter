import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';
part 'bottom_navigation_bar_bloc.freezed.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationState()) {
    on<BottomNavigationEvent>((event, emit) {
      event.map(
        onItemSelected: (e) => _onItemSelected(e, emit),
        onAiChefTapped: (e) => _onAiChefTapped(e, emit),
      );
    });
  }

  void _onItemSelected(event, emit) {
    debugPrint("_onItemSelected");
    emit(state.copyWith(selectedIndex: event.selectedIndex));
  }

  void _onAiChefTapped(e, emit) {
    debugPrint("_onItemSele_onAiChefTappedcted");
  }
}
