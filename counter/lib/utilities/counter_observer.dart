// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

/// [BlocOberver] for the counter application which
/// observed all state changes.
class CounterOberserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
