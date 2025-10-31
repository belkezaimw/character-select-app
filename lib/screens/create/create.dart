import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
var uuid =const Uuid(); 
class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _namecontroller = TextEditingController();
  final _slogoncontroller = TextEditingController();
  @override
  void dispose() {
    _namecontroller.dispose();
    _slogoncontroller.dispose();
    super.dispose();
  }

  //submit function
  void handlesubmit() {
    if (_namecontroller.text.trim().isEmpty) {
      
      return;
    }
    if (_slogoncontroller.text.trim().isEmpty) {
      
      return;
    }
      characters.add(Character(
        name: _namecontroller.text.trim(), 
        slogon: _slogoncontroller.text.trim(), 
        vocation: selectvocation, 
        id: uuid.v4()
        ));
  }

  Vocation selectvocation = Vocation.junkie;
  void updatevocation(Vocation vocation) {
    setState(() {
      selectvocation = vocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle("Characters creation"),

        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyledHeading("Welcome New Player")),
              Center(
                child: StyledText("create a name & slogn for your character"),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _namecontroller,
                  cursorColor: AppColors.textColor,
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    label: StyledText("Character Name"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _slogoncontroller,
                  cursorColor: AppColors.textColor,
                  style: GoogleFonts.kanit(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.chat),
                    label: StyledText("character slogan"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyledHeading("Chose a vocation")),
              Center(child: StyledText("this determine you available skils")),
              SizedBox(height: 30),
              VocationCard(
                selected: selectvocation == Vocation.junkie,
                onTap: updatevocation,
                vocation: Vocation.junkie,
              ),
              VocationCard(
                selected: selectvocation == Vocation.wizard,
                onTap: updatevocation,
                vocation: Vocation.wizard,
              ),
              VocationCard(
                selected: selectvocation == Vocation.raider,
                onTap: updatevocation,
                vocation: Vocation.raider,
              ),
              VocationCard(
                selected: selectvocation == Vocation.ninja,
                onTap: updatevocation,
                vocation: Vocation.ninja,
              ),

              Center(
                child: StyledButton(
                  onPressed: handlesubmit,
                  child: StyledHeading("Create character"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
