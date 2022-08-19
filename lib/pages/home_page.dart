import 'package:flutter/material.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nombres: Dario Manuel",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Apellidos: Arias Montes",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Dirección: Av. Lima 213123",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
