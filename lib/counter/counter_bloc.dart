

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialSatate()) {

    on<Increment>((event, emit) {
      final currentsateValue = state.count;
      final incrementedValue = currentsateValue + 1;

      return emit(CounterState(count: incrementedValue));
    });
    on<Decrement>((event, emit) {
      final currentsateValue = state.count;
      final decrementedValue = currentsateValue - 1;

      return emit(CounterState(count: decrementedValue));
    });
  }
}
