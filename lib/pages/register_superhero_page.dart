import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';
import 'package:flutter_codigo3_state/services/superheroe_services.dart';

class RegisterSuperheroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: superheroeService.superheroeStream,
          builder: (BuildContext context, AsyncSnapshot snap){
            if (snap.hasData){
              Superheroe superheroe = snap.data;
              return Text(superheroe.name);
            }
            return Text("Registrar");
          },
        ),
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
                Superheroe superheroe = new Superheroe(
                  name: "Batman",
                  experience: 20,
                  powers: [
                    "Millonario",
                    "Inteligencia",
                    "Artes marciales",
                    "Científico",
                  ],
                );
                superheroeService.loadSuperheroe(superheroe);
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Actualizar Experiencia",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                superheroeService.changeExperience(100); //actualiza el nuevo valor de expeirencia
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text(
                "Añadir Superpoderes",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                superheroeService.addPowers();
              },
            ),
          ],
        ),
      ),
    );
  }
}