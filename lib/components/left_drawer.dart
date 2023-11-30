import 'package:flutter/material.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:16.0, top: 16.0, bottom: 5.0),
              child: Text(
                'France Data',
                style: textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 100.0),
              child: Text(
                'Atlas de Données Françaises',
                style: textTheme.bodySmall,
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
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
      );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}