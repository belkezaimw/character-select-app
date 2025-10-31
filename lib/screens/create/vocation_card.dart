import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class VocationCard extends StatelessWidget {
  // CORRECTED: Removed the 'junkie' positional argument.
  const VocationCard({
    super.key,
    required this.vocation,
    required this.onTap,
    required this.selected,
  });

  final Vocation vocation;
  // CORRECTED: Changed 'onTa' to 'onTap' to match the constructor and usage.
  final void Function(Vocation) onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // This now works because the field is correctly named 'onTap'.
        onTap(vocation);
        print(vocation.title);
      },
      child: Card(
        color: selected ?AppColors.secondaryColor:Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                "assets/img/vocations/${vocation.image}",

                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected ?Colors.black.withOpacity(0.8) : Colors.transparent,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledHeading(vocation.title),
                    StyledText(vocation.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
