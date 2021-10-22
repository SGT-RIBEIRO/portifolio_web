import 'package:flutter/material.dart';
import 'package:portifolio_web/utils/styles.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
    required this.colorC
  }) : super(key: key);

  final double percentage;
  final String label;
  final Color colorC;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: Estilos.defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.passthrough,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 15.0,
                  value: value,
                  backgroundColor: Estilos.bgColor,
                  color: colorC,
                ),
                Center(
                  child: Text(
                      (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),

                ),
              ],
            ),

          ),
        ),
        const SizedBox(
          height: Estilos.defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
