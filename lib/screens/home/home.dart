import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/home/charachter_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List characters = ["mario","luigi","peach","toad","bowser","koopa",];

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
                itemCount: characters.length,
                itemBuilder: (_,index){
                  return CharacterCard(characters[index]);
                },
              
              ),
            ),
            
        
            StyledButton(onPressed:(){},child: StyledHeading("create new"), )

          ],
        ),
      ),
    );
  }
}