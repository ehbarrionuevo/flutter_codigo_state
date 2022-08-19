import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/models/person_model.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // CounterProvider _counterProvider = Provider.of<CounterProvider>(context);
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Nombre",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(
                  hintText: "Apellidos",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  hintText: "Dirección",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52.0,
                child: ElevatedButton(
                  onPressed: () {

                    PersonModel person = PersonModel(
                      name: nameController.text,
                      lastName: lastNameController.text,
                      address: addressController.text,
                    );

                    _personProvider.addNewPerson(person);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    primary: Colors.indigo,
                  ),
                  child: Text(
                    "Guardar",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52.0,
                child: ElevatedButton(
                  onPressed: () {
                    _personProvider.deletePerson();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    primary: Colors.redAccent,
                  ),
                  child: Text(
                    "Eliminar",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52.0,
                child: ElevatedButton(
                  onPressed: () {
                    _personProvider.addProduct("Item 1");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    primary: Colors.greenAccent,
                  ),
                  child: Text(
                    "Agregar Producto",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
