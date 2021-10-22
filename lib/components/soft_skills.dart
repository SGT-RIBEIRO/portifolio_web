import 'package:flutter/material.dart';
import 'package:portifolio_web/utils/progress_indicator.dart';


class SoftSkills extends StatelessWidget {
  const SoftSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.orange,
            label: 'Liderança',
            percentage: 0.80,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.deepPurple,
            label: 'Disciplina',
            percentage: 0.95,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.brown,
            label: 'Trabalho em equipe',
            percentage: 0.90,
          ),
        ),
      ],
    );
  }
}
