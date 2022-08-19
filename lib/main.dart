
import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/pages/home_page.dart';
import 'package:flutter_codigo_state/providers/counter_provider.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => CounterProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => PersonProvider()),
      ],
      child: MaterialApp(
        title: "StateApp Provider www",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
