import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main(List<String> args) {
  final cubit = CounterCubit();
  print(cubit.state); //! Should print 0 = the default state of the counter.

  cubit.increment();
  print(cubit.state);
}