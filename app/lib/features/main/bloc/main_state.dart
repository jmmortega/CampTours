part of 'main_bloc.dart';

sealed class MainState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MainInitialState extends MainState {
}

class MainLoadedState extends MainState {
  MainLoadedState({required this.locations});

  final List<Location> locations;
}

class MainSelectedLocationState extends MainState {
  MainSelectedLocationState({required this.selectedLocation});

  final Location selectedLocation;

  @override
  List<Object?> get props => [selectedLocation.buildingNumber];

}