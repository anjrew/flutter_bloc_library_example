import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementCounter extends CounterEvent{

  @override
  List<Object> get props => null;
}

class DecrementCounter extends CounterEvent{

  @override
  List<Object> get props => null;
}
