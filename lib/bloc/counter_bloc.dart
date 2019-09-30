import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int counter = 0;
  @override
  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event,) async* {
    if (event is IncrementCounter){
      counter++;
      yield CounterState(counter);
    } else {
      counter--;
      yield CounterState(counter);
    }
  }
}
