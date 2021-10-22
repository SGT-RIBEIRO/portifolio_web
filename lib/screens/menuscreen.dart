import 'package:flutter/material.dart';
import 'package:portifolio_web/rotas/rotas.dart';

class MenuCScreen extends StatelessWidget {
  const MenuCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.menu, color: Colors.white,)
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(AppRoutes.PAGINA_INICIAL);
              },
              child: const Text(
                'Página Inicial',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(AppRoutes.SOBRE_MIM);
              },
              child: const Text(
                  'Sobre Mim',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(AppRoutes.TRABALHOS);
              },
              child: const Text(
                  'Trabalhos',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(AppRoutes.CONTATO);
              },
              child: const Text(
                  'Contato',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
