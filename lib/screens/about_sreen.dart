import 'dart:html';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_web/components/bighead.dart';
import 'package:portifolio_web/components/program_skills.dart';
import 'package:portifolio_web/components/sliverappbar_custon.dart';
import 'package:portifolio_web/components/soft_skills.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.white]
            )
        ),
        child: CustomScrollView(
          slivers: [
            const SliverAppBarC(),
            const SliverToBoxAdapter(
              child: BigHeader(pagina: 'Sobre Mim'),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/imagens/diogo.jpg'),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  StyledText(
                      text: '<bold><h1>Diogo Ribeiro</h1></bold>',
                    tags: {
                        'bold': StyledTextTag(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      'h1': StyledTextTag(
                        style: const TextStyle(
                          fontSize: 25
                        ),
                      ),
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(60, 40, 60, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                        child: const AutoSizeText(
                          "       33 anos de idade, graduado em An??lise e Desenvolvimento de Sistemas pelo "
                              "Instituto Federal de Rond??nia. Como Compet??ncias: Programador Mobile"
                              " e web com flutter, como tamb??m, programador web com python, atrav??s do "
                              "framework Django. Tem experi??ncia na ??rea de "
                              "Ci??ncia de Dados, voltada para an??lise e tratamento de "
                              "informa????es, al??m de implementa????o de algoritmos de machine learning. "
                              "Atualmente ?? Policial Militar no Estado de "
                              "Rond??nia e Cientista de Dados Junior na empresa filandesa FIBO.IO.",
                          style: TextStyle(
                            fontSize: 17
                          ),
                          textAlign: TextAlign.justify,
                        ),
                    ),

                  ),
                  const Text(
                      'Habilidades em Programa????o',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 80)),
                  const ProgramSkills(),
                  const Padding(padding: EdgeInsets.only(top: 80)),
                  const Text(
                    'Habilidades Comportamentais',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 80)),
                  const SoftSkills()

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
