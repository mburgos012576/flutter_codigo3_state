import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';
import 'package:flutter_codigo3_state/pages/register_superhero_page.dart';
import 'package:flutter_codigo3_state/services/superheroe_services.dart';
import 'package:provider/provider.dart';

class InfoSuperheroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final superheroe = Provider.of<SuperheroService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Superhero"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(onPressed: (){
            superheroe.deleteSuperheroe();
          }, icon: Icon(Icons.delete),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSuperheroPage()));
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      body: superheroe.superheroeExist ? SuperheroeInformationWidget(superheroe: superheroe.superheroe,) : Center(child: Text("Aún no hay un heroe"),),
    );
  }
}

class SuperheroeInformationWidget extends StatelessWidget {
  Superheroe superheroe;
  SuperheroeInformationWidget({required this.superheroe});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Información General",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListTile(
              title: Text("Nombre: ${superheroe.name}"),
            ),
            ListTile(
              title: Text("Años de experiencia: ${superheroe.experience}"),
            ),
            Text(
              "Poderes",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            ),
            Divider(),
            ...superheroe.powers.map((e) => Text(e),),
          ],
        ),
      ),
    );
  }
}
