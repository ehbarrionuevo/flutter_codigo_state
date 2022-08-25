
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_state/bloc/person/person_bloc.dart';
import 'package:flutter_codigo_state/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=> PersonBloc()),
      ],
      child: MaterialApp(
        title: "StateApp",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
