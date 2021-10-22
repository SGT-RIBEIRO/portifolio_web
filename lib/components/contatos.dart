// ignore: file names
// ignore: file names
// ignore_for_file: file_names


import 'package:flutter/material.dart';

import 'abrirContatos.dart';

class ListaContatos extends StatelessWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightBlue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      abrirContatosZap("https://api.whatsapp.com/send?phone=5569999749201&text=Ol%C3%A1%2C%20Como%20posso%20ajudar%3F");
                    },
                    child: Image.asset(
                      'assets/imagens/zap.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Text(
                  'Whatsapp',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightBlue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      abrirContatos("https://www.facebook.com/diogoribeiro.ro");
                    },
                    child: Image.asset(
                      'assets/imagens/face.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Text(
                  'Facebook',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightBlue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      abrirContatos("https://instagram.com/diogo_ribeiro_31?utm_medium=copy_link");
                    },
                    child: Image.asset(
                      'assets/imagens/insta2.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Text(
                  'Instagram',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightBlue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      abrirContatos("https://github.com/SGT-RIBEIRO");
                    },
                    child: Image.asset(
                      'assets/imagens/git.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Text(
                  'GitHub',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.lightBlue),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: GestureDetector(
                    onTap: () {
                      abrirContatos("https://www.linkedin.com/in/diogo-ribeiro");
                    },
                    child: Image.asset(
                      'assets/imagens/lin.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                const Text(
                  'Linkedin',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
