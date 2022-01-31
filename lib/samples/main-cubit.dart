import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  // final cubit = CounterCubit();
  // print(cubit.state); //! Should print 0 = the default state of the counter.

  // cubit.increment();
  // print(cubit.state);

  // cubit.increment();
  // print(cubit.state);

  // cubit.increment();
  // print(cubit.state);

  // cubit.decrement();
  // print(cubit.state);

  // cubit.close();

  // Subscribe method
  final cubit = CounterCubit();
  final subscription = cubit.stream.listen(print);

  cubit.increment();
  cubit.decrement();
  cubit.increment();
  cubit.increment();

  await Future.delayed(Duration.zero);
  await subscription.cancel();
  await cubit.close();
}
