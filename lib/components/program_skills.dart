import 'package:flutter/material.dart';
import 'package:portifolio_web/utils/progress_indicator.dart';


class ProgramSkills extends StatelessWidget {
  const ProgramSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.blue,
            label: 'Python',
            percentage: 0.90,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.red,
            label: 'Flutter',
            percentage: 0.70,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: const AnimatedCircularProgressIndicator(
            colorC: Colors.green,
            label: 'Machine Learning',
            percentage: 0.60,
          ),
        ),
      ],
    );
  }
}
