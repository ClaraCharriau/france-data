import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/left_drawer.dart';
import 'package:flutter_examen1/components/video_hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        // agencement des sections du body en colonne
        children: const <Widget>[
          // sections du body
          //... ici empilez les differentes sections du body.
          //... séparez les avec du padding
          VideoHero(),
          // component affichant un Hero avec un background Video
        ],
      ),
      drawer: const LeftDrawer(),
    );
  }
}
