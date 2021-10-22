import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BigHeader extends StatelessWidget {

  final pagina;

  const BigHeader({Key? key,
  required this.pagina,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SafeArea(
                child: Image.network(
                    'https://images.unsplash.com/photo-1623126908029-58cb08a2b272?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.cover,
                ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Agne',
                      color: Colors.white
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(pagina),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
