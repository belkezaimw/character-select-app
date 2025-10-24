import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :
      AppBar(
        title: StyledTitle("Characters creation"),
        
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(

          children: [

            Center(child: Icon(Icons.code,color:AppColors.primaryColor,),),
            Center(child: StyledHeading("Welcome New Player"),),
            Center(child: StyledText("create a name & slogn for your character"),),
            SizedBox(height: 30,),
            TextField(
              
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: StyledText("Character Name"),
              
            ),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.chat),
              label: StyledText("Character Slogan"),
              
            ),
              
            ),
            SizedBox(height: 0,),
                        

          ],
        ),


      ),
      
      
      
      );
  }
}