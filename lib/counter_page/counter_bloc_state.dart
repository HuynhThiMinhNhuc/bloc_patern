import 'package:equatable/equatable.dart';

abstract class CounterBlocState extends Equatable{

}

class LatestCounterState extends CounterBlocState{
  final int newCounterValue;

  LatestCounterState({required this.newCounterValue});

  @override
  List<Object> get props => [newCounterValue];
}