import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_state/bloc/person/person_bloc.dart';
import 'package:flutter_codigo_state/pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      ),
      body: Center(
        child: BlocBuilder<PersonBloc, PersonState>(
          builder: (BuildContext context, PersonState state) {
            if (state.personModel != null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nombres: ${state.personModel!.name}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Apellidos: ${state.personModel!.lastName}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Dirección: ${state.personModel!.address}",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              );
            }
            return Text("No hay nada registrado");
          },
        ),
      ),
    );
  }
}
