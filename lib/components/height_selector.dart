import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_style.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double height = 170; //Altura inicial
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ALTURA", style: TextStyles.bodyText),
        Text("$height cm", style: TextStyles.bodyText),
        Slider(
          value: height,
          onChanged: (newHeight) {
            setState(() {
              height = newHeight;
            });
          },
          min: 150,
          max: 220,
          divisions: 70,
          activeColor: AppColors.primary,
        ),
      ],
    );
  }
}
