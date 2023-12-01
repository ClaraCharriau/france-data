import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/search_button.dart';
import 'package:flutter_examen1/components/section.dart';
import 'package:flutter_examen1/components/left_drawer.dart';
import 'package:flutter_examen1/components/video_hero.dart';

const String backgroundPath = 'web/assets/img/bkgnight.jpg';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

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
        child: ListView(
          children: <Widget>[
            const VideoHero(),
            const Section(
              sectionTitle: "I. Nos Régions",
              content:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            ),
            const SearchButton(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 8.0,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const LeftDrawer(),
    );
  }
}
