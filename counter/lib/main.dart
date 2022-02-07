import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'counter_app.dart';

import 'utilities/counter_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const CounterApp()),
    blocObserver: CounterOberserver(),
  );

  runApp(const CounterApp());
}
