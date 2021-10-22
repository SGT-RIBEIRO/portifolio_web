import 'package:flutter/material.dart';
import 'package:portifolio_web/rotas/rotas.dart';
import 'package:portifolio_web/screens/contact_screen.dart';
import 'package:portifolio_web/screens/home_page_screens.dart';
import 'package:portifolio_web/screens/about_sreen.dart';
import 'package:portifolio_web/screens/menuscreen.dart';
import 'package:portifolio_web/screens/works_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePageScreen(),
      routes: {
        AppRoutes.PAGINA_INICIAL: (context) => const HomePageScreen(),
        AppRoutes.SOBRE_MIM: (context) => const AboutScreen(),
        AppRoutes.TRABALHOS: (context) => const WorksScreen(),
        AppRoutes.CONTATO: (context) => const ContactScreen(),
        AppRoutes.MENUC: (context) => const MenuCScreen()


      },
    );
  }
}

