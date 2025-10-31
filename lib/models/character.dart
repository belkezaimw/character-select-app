import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/models/stats.dart';

class Character with Stats{

  Character({required this.name,required this.slogon,required this.vocation ,required this.id,});



    final Set<Skill> skills = {};
    final Vocation vocation;
    final String name;
    final String slogon;
    final String id;
    bool _isfav=false;


    bool get isfav => _isfav;

    

void toggleisfav(){

    _isfav = !_isfav;

}

void upadate_skill(Skill skill){
skills.clear();
skills.add(skill);


}





}


List <Character> character = [
  Character(id: "1",name: "klara",vocation: Vocation.wizard,slogon: "kaboooom"),
  Character(id: '2', name: 'Jonny', vocation: Vocation.junkie, slogon: 'Light me up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogon: 'Fire in the hole!'),
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogon: 'Alright then gang.'),
  
];