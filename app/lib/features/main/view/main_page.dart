import 'package:camp_tours/features/main/bloc/main_bloc.dart';
import 'package:camp_tours/features/main/view/main_view.dart';
import 'package:camp_tours_data/camp_tours_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context)
    => BlocProvider<MainBloc>(
        create: (context) => MainBloc(waypointService: CampToursWaypointsService()),
        child: MainView());

}