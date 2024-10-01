part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MainLocationLoadedEvent extends MainEvent {
  MainLocationLoadedEvent();
}

class MainSelectedLocationEvent extends MainEvent {
  MainSelectedLocationEvent({required this.selectedLocation});

  final Location selectedLocation;
}