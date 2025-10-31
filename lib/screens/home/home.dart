import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home/charachter_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/create/create.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle("Your Characters"),
        
        centerTitle: true,
      ),
      body: Container(
        
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: character.length,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (_,index){
                  return CharacterCard(character[index]);
                },
              
              ),
            ),
            
        
            StyledButton(onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: 
                  (ctx)=> Create()));
            },child: StyledHeading("create new"), )

          ],
        ),
      ),
    );
  }
}