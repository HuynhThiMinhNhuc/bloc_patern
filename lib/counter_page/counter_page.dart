

import 'package:bloc_pattern/counter_page/counter_bloc.dart';
import 'package:bloc_pattern/counter_page/counter_bloc_event.dart';
import 'package:bloc_pattern/counter_page/counter_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  CounterScreenState createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {

  //Used to add events in to Bloc
  late CounterBloc _counterBlocSink;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    //Close the Stream Sink when the widget is disposed
    _counterBlocSink.close();
  }

  @override
  Widget build(BuildContext context) {

    _counterBlocSink = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: BlocBuilder<CounterBloc, CounterBlocState>(
            builder: (context, state){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("You have clicked ${(state as LatestCounterState).newCounterValue} Times"),
                 const  SizedBox(height: 16,),
                  TextButton(
                    child:const Text("Increase Counter"),
                    onPressed: (){

                      _counterBlocSink.add(IncreaseCounterEvent());
                    },
                  ),
                  const SizedBox(height: 16,),
                  TextButton(
                    child:const Text("Decrease Counter"),
                    onPressed: (){

                      _counterBlocSink.add(DecreaseCounterEvent());
                    },
                  ),
                ],
              );
            },
          )
        )
    );
  }
}