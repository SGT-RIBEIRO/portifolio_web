import 'package:flutter/material.dart';
import 'package:portifolio_web/components/bighead.dart';
import 'package:portifolio_web/components/contatos.dart';
import 'package:portifolio_web/components/sliverappbar_custon.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.white]
            )
        ),
        child: const CustomScrollView(
          slivers: [
            SliverAppBarC(),
            SliverToBoxAdapter(
              child: BigHeader(pagina: 'Contatos'),
            ),
            SliverToBoxAdapter(
              child: Padding(padding: EdgeInsets.only(top: 80)),
            ),
            SliverToBoxAdapter(
                child: ListaContatos()
            ),
          ],
        ),
      ),
    );
  }
}
