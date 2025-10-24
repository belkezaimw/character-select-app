import 'package:flutter_rpg/models/stats.dart';

class Character with Stats{

  Character({required this.name,required this.slogon,required this.id,});

    final String name;
    final String slogon;
    final String id;
    bool _isfav=false;


    bool get isfav => _isfav;

    

void toggleisfav(){

    _isfav = !_isfav;

}





}