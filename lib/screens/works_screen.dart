import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_web/components/cards.dart';
import 'package:portifolio_web/components/sliverappbar_custon.dart';
import 'package:portifolio_web/utils/carrousel_slider.dart';


class WorksScreen extends StatefulWidget {
  const WorksScreen({Key? key}) : super(key: key);

  @override
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
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
              child: CarrouselSliderScreen()
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: const AutoSizeText(
                        "       Confira, a seguir, meus últimos trabalhos desenvolvidos "
                            "que variam de aplicações mobile, web e projetos de machine learning.",
                        style: TextStyle(
                            fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ),
                  const Text(
                    'Últimos Trabalhos',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                ],
              ),
            ),
            SliverGrid.count(
                crossAxisCount: 3,
              children: const [
                CardsC(color: Colors.deepOrange, title: 'Site Container Loc', description: 'Empresa especializada em fabricação e locação de containeres.',),
                CardsC(color: Colors.red, title: 'Site Container Loc', description: 'Empresa especializada em fabricação e locação de containeres.',),
                CardsC(color: Colors.grey, title: 'Site Container Loc', description: 'Empresa especializada em fabricação e locação de containeres.',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
