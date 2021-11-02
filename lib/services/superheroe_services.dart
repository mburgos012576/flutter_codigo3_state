
import 'dart:async';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';

class _SuperheroeService{
  Superheroe? _superheroe;

  Superheroe get superheroe => this._superheroe!;

  StreamController<Superheroe> _superheroeStreamController = new StreamController<Superheroe>();

  loadSuperheore(Superheroe superheroe){
    _superheroe = superheroe;
    _superheroeStreamController.add(_superheroe!);
  }

  bool get superheroeExist => (_superheroe != null) ? true : false;

  closeStream(){
    _superheroeStreamController.close();
  }
}

final superheroeService = new _SuperheroeService();