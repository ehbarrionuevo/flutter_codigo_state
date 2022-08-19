

import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

class Home2Page extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    PersonProvider personProvider = Provider.of<PersonProvider>(context);

    return Scaffold(
     body: Center(
       child: Text(personProvider.personData!.name),
     ),
    );
  }
}
