import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/config.dart';
import 'package:flutter_examen1/components/left_drawer.dart';
import 'package:flutter_examen1/components/search_bar.dart';
import 'package:flutter_examen1/components/svg_map.dart';

const String backgroundPath = 'web/assets/img/bkgnight.jpg';

class RegionPage extends StatelessWidget {
  const RegionPage({super.key, required this.config});

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Image(
          color: const Color.fromARGB(255, 183, 220, 255).withOpacity(0.8),
          colorBlendMode: BlendMode.modulate,
          image: const AssetImage(backgroundPath),
          fit: BoxFit.cover,
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Recherche par régions",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: LeftDrawer(
          config: config, currentPage: config.get('page-name.regions')),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2), BlendMode.dstATop),
              image: const AssetImage(backgroundPath),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 300,
                child: SearchBarApp(config: config),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Center(
                    child: SvgMap(config: config),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
