// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:weather/core/providers/globals/weather_provider.dart';
import 'core/resources/themes.dart';
import 'package:provider/provider.dart';
import 'ui/screens/main_screen.dart';
import 'ui/screens/splash_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider()..initialize(context),
      builder: (context, child) => MaterialApp(
        title: 'N-Weather',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: const Root(),
      ),
    );
  }
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  bool _ready = false;

  @override
  void initState() {
    _ready = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _ready ? const MainScreen() : const SplashScreen();
  }
}
