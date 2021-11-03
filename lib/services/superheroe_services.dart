import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_codigo3_state/model/super_hero_model.dart';

class SuperheroService with ChangeNotifier{

  Superheroe? _superheroe = Superheroe(name: "", experience: 0, powers: []);

  Superheroe get superheroe => this._superheroe!;

  set superheroe(Superheroe superheroe){
    _superheroe = superheroe;
    notifyListeners();
  }

  updateExperience(int experience){
    _superheroe!.experience=experience;
    notifyListeners();
  }

  addPowers(){
    _superheroe!.powers.add("Power ${_superheroe!.powers.length + 1}");
    notifyListeners();
  }

  deleteSuperheroe(){
    _superheroe=null;
    notifyListeners();
  }



  bool get superheroeExist => _superheroe != null;

}