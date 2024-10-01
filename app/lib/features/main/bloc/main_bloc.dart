
import 'dart:async';

import 'package:camp_tours/utils/geolocation.dart';
import 'package:camp_tours_data/camp_tours_data.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({
    required CampToursWaypointsService waypointService})
      :
        _waypointsService = waypointService,
        super(MainInitialState()) {

    on<MainLocationLoadedEvent>(_mainLocationLoadedRequested);
  }

  final CampToursWaypointsService _waypointsService;

  FutureOr<void> _mainLocationLoadedRequested(MainLocationLoadedEvent event, Emitter<MainState> emit) async {
    final geoLocation = await determinePosition();
    final locations = await _waypointsService.retrieveLocations(geoLocation.latitude, geoLocation.longitude);
    emit(MainLoadedState(locations: locations));
  }


}