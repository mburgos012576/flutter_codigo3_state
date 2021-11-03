import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';
import 'package:flutter_codigo3_state/pages/register_superhero_page.dart';
import 'package:flutter_codigo3_state/services/superheroe_services.dart';

class InfoSuperheroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Superhero"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterSuperheroPage(),
            ),
          );
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: superheroeService.superheroeStream,
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            Superheroe superheroe = snap.data;
            return infoSuperheroeWidget(
              superheroe: superheroe,
            );
          }
          return Center(
            child: Text("Aún no hay un superheroe"),
          );
        },
      ),
    );
  }
}

class infoSuperheroeWidget extends StatelessWidget {
  Superheroe superheroe;
  infoSuperheroeWidget({required this.superheroe});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Información General",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Nombre : ${superheroe.name}'),
            ),
            ListTile(
              title: Text('Años de experiencia : ${superheroe.experience}'),
            ),
            Text(
              'Poderes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Divider(),
            ...superheroe.powers.map(   //nuevo metodo para recorrer una lista
              (e) => ListTile(
                title: Text(e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
