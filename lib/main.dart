import 'package:bloc_pattern/counter_page/counter_bloc.dart';
import 'package:bloc_pattern/counter_page/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
    
      create: (context) => CounterBloc(),
    
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:const CounterScreen()
      ),
    );
    
  }
}

