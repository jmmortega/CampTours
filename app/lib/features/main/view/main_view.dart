import 'package:camp_tours/features/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context)
    => BlocConsumer<MainBloc, MainState>(
        listenWhen: (previous, current) =>
            current is MainInitialState,
        listener: _runningListener,
        builder: _buildView);


  void _runningListener(BuildContext context, MainState state) {
    if(state is MainInitialState) {
      context.read<MainBloc>()
          .add(MainLocationLoadedEvent());
    }
  }

  Widget _buildView(BuildContext context, MainState state)
    => Scaffold(
      body: switch(state) {
        MainInitialState() => _buildLoading(context, state),
        MainLoadedState() => throw UnimplementedError(),
        MainSelectedLocationState() => throw UnimplementedError(),
      },
    );

  Widget _buildLoading(BuildContext context, MainInitialState state)
    => const Center(child: Text('Loading...'));
}