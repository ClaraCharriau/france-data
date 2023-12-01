import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/left_drawer.dart';

class RegionPage extends StatelessWidget {
  const RegionPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(),
      drawer: const LeftDrawer(),
    );
  }
}