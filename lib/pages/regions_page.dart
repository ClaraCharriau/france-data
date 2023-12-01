import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/left_drawer.dart';

const String backgroundPath = 'web/assets/img/bkgnight.jpg';

class RegionPage extends StatelessWidget {
  const RegionPage({super.key, required this.title});

  final String title;

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
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.dstATop),
            image: const AssetImage(backgroundPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: const LeftDrawer(),
    );
  }
}
