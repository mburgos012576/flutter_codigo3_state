import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';
import 'package:flutter_codigo3_state/services/superheroe_services.dart';
import 'package:provider/provider.dart';

class RegisterSuperheroPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final superheroeService = Provider.of<SuperheroService>(context);

    return Scaffold(
      appBar: AppBar(
        title: !superheroeService.superheroeExist ? Text("Register") : Text("${superheroeService.superheroe.name}"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Añadir Superheroe",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Superheroe batman = new Superheroe(
                  name: "Batman",
                  experience: 20,
                  powers: ["Millorario", "Científico"],
                );
                superheroeService.superheroe = batman;
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Actualizar Experiencia",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Añadir Superpoderes",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}