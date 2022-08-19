import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/pages/home2_page.dart';
import 'package:flutter_codigo_state/pages/register_page.dart';
import 'package:flutter_codigo_state/providers/counter_provider.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CounterProvider _counterProvider = Provider.of<CounterProvider>(context);
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);

    print(_personProvider.products);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          // Text(_counterProvider.counter.toString()),
        ],
      ),
      body: Center(
        child: _personProvider.checkPerson
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nombres: ${_personProvider.personData!.name}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Apellidos: ${_personProvider.personData!.lastName}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Dirección: ${_personProvider.personData!.address}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home2Page()));
                    },
                    child: Text("Home 2"),
                  ),
                ],
              )
            : const Text("Aún no hay nadie registrado."),
      ),
    );
  }
}
