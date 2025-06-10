import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:heycooker_flutter/utils/log/log.dart';
import './../../../app/routes/app_route.gr.dart';
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
    log.info('_onItemSelected');
    final index = event.selectedIndex;
    PageRouteInfo? targetRoute;

    switch (index) {
      case 0:
        targetRoute = const MainRoute();
        break;
      case 1:
        targetRoute = const MyPantry();
        break;
      default:
        targetRoute = null;
    }

    emit(state.copyWith(
      selectedIndex: event.selectedIndex,
      navigateTo: targetRoute,
    ));
  }

  void _onAiChefTapped(e, emit) {
    log.info('_onItemSele_onAiChefTappedcted');
  }
}
