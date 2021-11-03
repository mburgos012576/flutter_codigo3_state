
import 'dart:async';
import 'dart:math';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';

class _SuperheroeService{
  Superheroe? _superheroe;

  Superheroe get superheroe => this._superheroe!;

  StreamController<Superheroe> _superheroeStreamController = new StreamController<Superheroe>.broadcast();
  Stream<Superheroe> get superheroeStream => _superheroeStreamController.stream;

  loadSuperheroe(Superheroe superheroe){
    _superheroe = superheroe;
    _superheroeStreamController.add(_superheroe!);
  }

  changeExperience(int experience){
    _superheroe!.experience = experience;
    _superheroeStreamController.add(_superheroe!);

  }

  addPowers(){
    _superheroe!.powers.add("Power ${_superheroe!.powers.length + 1}");
    _superheroeStreamController.add(_superheroe!);
  }

  bool get superheroeExist => (_superheroe != null) ? true : false;

  closeStream(){
    _superheroeStreamController.close();
  }
}

final superheroeService = new _SuperheroeService();