import 'dart:async';

import 'package:bloc_pattern/counter_page/counter_bloc_event.dart';
import 'package:bloc_pattern/counter_page/counter_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState>{

   CounterBloc() : super(LatestCounterState(newCounterValue: 0)) {
    on<IncreaseCounterEvent>(_onActiveuserLoadEvent);
    on<DecreaseCounterEvent>(_onActiveuserLoadEvent);
  }
  FutureOr<void> _onActiveuserLoadEvent(
      CounterBlocEvent event, Emitter<CounterBlocState> emit)  {
 
     if(event is IncreaseCounterEvent){

      int currentCounterValue = (state as LatestCounterState).newCounterValue;

      int newCounterValue = currentCounterValue + 1;

      emit(LatestCounterState(newCounterValue: newCounterValue));

    }else if(event is DecreaseCounterEvent){

      int currentCounterValue = (state as LatestCounterState).newCounterValue;

      int newCounterValue = currentCounterValue - 1;

      emit( LatestCounterState(newCounterValue: newCounterValue));

    }


  }



}