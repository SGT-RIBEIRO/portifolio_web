import 'package:flutter/material.dart';
import 'package:portifolio_web/components/infos.dart';
import 'package:portifolio_web/components/sliverappbar_custon.dart';
import 'package:portifolio_web/utils/styles.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: Infos(),
          )
        ],
      ),
    );
  }
}
