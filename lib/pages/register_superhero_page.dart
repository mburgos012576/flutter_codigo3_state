import 'package:flutter/material.dart';

class RegisterSuperheroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir Superhero",style: TextStyle(color: Colors.white),),
              onPressed: () {

              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Actualizar experiencia",style: TextStyle(color: Colors.white),),
              onPressed: () {

              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir Superpoderes",style: TextStyle(color: Colors.white),),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
