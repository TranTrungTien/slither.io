import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/constants.dart';
import '../utils/audio_service.dart';
import 'screens/home_screen.dart';

class SlitherApp extends StatefulWidget {
  const SlitherApp({super.key});

  @override
  State<SlitherApp> createState() => _SlitherAppState();
}

class _SlitherAppState extends State<SlitherApp> {
  @override
  void initState() {
    super.initState();
    AudioService.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slither Rewrite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CatppuccinColors.base,
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          primary: CatppuccinColors.mauve,
          secondary: CatppuccinColors.blue,
          surface: CatppuccinColors.mantle,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
