// ignore: file names
// ignore: file names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portifolio_web/rotas/rotas.dart';
import 'package:portifolio_web/utils/styles.dart';

class MenuC extends StatelessWidget {
  const MenuC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 24, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.PAGINA_INICIAL);
            },
            child: const Text(
              'Pagina Inicial',
              style: TextStyle(color: Estilos.logoColor, fontSize: 20),
            ),
          ),
          const VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.SOBRE_MIM);
            },
            child: const Text(
              'Sobre Mim',
              style: TextStyle(color: Estilos.logoColor, fontSize: 20),
            ),
          ),
          const VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.TRABALHOS);
            },
            child: const Text(
              'Trabalhos',
              style: TextStyle(color: Estilos.logoColor, fontSize: 20),
            ),
          ),
          const VerticalDivider(),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.CONTATO);
            },
            child: const Text(
              'Contato',
              style: TextStyle(color: Estilos.logoColor, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
