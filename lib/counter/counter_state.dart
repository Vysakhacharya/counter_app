part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});
}

class InitialSatate extends CounterState {
  InitialSatate() : super(count: 0);
}
