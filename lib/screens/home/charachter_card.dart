import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.charachter,{super.key});

  final String charachter;

  @override
  Widget build(BuildContext context) {
    return Card(
                  
      child: Padding(
            padding: EdgeInsets.symmetric(horizontal:16 ,vertical: 8),
          child :Row(
            
            children: [
              Text(charachter),
              Expanded(child: SizedBox()),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_sharp, color: AppColors.textColor,))
            ],
          ),
        ),
    );
  }
}