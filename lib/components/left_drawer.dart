import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/home_page.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  int _selectedDestination = 0;

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
                    text: 'France Data',
                    style: textTheme.headlineSmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nAtlas de Données Françaises',
                        style: textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Accueil'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: const Icon(Icons.map),
                title: const Text('Régions'),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Paramètres'),
                selected: _selectedDestination == 2,
                onTap: () => selectDestination(2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });

    if (getPage(index) == null) {
      Navigator.pop(context);
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => getPage(index),
      ),
    );
  }

  getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage(title: "France Data");
      case 1:
        return const RegionPage(title: "Recherche Par Region");
      default:
        return null;
    }
  }
}
