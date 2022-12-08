
import 'package:equatable/equatable.dart';

abstract class CounterBlocEvent extends Equatable{

}

class DecreaseCounterEvent extends CounterBlocEvent{
  @override
  List<Object> get props => [];
}


class IncreaseCounterEvent extends CounterBlocEvent{
  @override
  List<Object> get props => [];
}