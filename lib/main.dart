import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/config.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_examen1/pages/home_page.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = Config.getInstance();
  await config.load();
  runApp(MyApp(config: config));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.config});

  final Config config;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam Simplon gr.Renault',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.merriweather(
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 4,
          ),
          displayMedium: GoogleFonts.merriweather(
            fontSize: 12,
            color: Colors.white,
            letterSpacing: 4,
          ),
          titleLarge: GoogleFonts.acme(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
          headlineSmall: GoogleFonts.roboto(
            color: Colors.white,
          ),
          bodySmall: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(config: config),
    );
  }
}
