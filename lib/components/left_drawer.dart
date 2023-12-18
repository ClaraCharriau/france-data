import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/config.dart';
import 'package:flutter_examen1/pages/home_page.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key, required this.config, required this.currentPage});
  final Config config;
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const String backgroundPath = 'web/assets/img/bkgnight.jpg';

    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2), BlendMode.dstATop),
                image: const AssetImage(backgroundPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundPath),
                    fit: BoxFit.cover,
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                    text: config.get('hero-main-caption.title'),
                    style: textTheme.headlineSmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${config.get('hero-main-caption.subtitle')}',
                        style: textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Accueil'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(config: config,),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.map),
                title: const Text('Régions'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RegionPage(config: config,),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Paramètres'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
