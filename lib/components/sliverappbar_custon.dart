import 'package:flutter/material.dart';
import 'package:portifolio_web/rotas/rotas.dart';
import 'package:portifolio_web/utils/styles.dart';

import 'menuC.dart';

class SliverAppBarC extends StatelessWidget {
  const SliverAppBarC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return SliverAppBar(
      backgroundColor: Estilos.menuColor,
      floating: true,
      elevation: 25,
      shadowColor: Estilos.menuColor,
      centerTitle: false,
      title: const Text(
        'DR',
        style: TextStyle(
          color: Estilos.logoColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
      ),
      actions: [
        Container(
            child: largura < 600
            ? IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(AppRoutes.MENUC);
                },
                icon: const Icon(Icons.menu, color: Colors.black,)
            )
            : const MenuC(),
        ),
      ],
    );
  }
}
