import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'bloc_observer.dart';

void main() {
  void main() {
    Bloc.observer = const AppBlocObserver();
    runApp(const App());
  }
}


