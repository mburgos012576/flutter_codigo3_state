import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/pages/info_superhero_page.dart';
import 'package:flutter_codigo3_state/services/superheroe_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context)=> SuperheroService()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InfoSuperheroPage(),
      ),
    );
  }
}