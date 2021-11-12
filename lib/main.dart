import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Nuestros
import 'package:qr_app/pages/home_page.dart';
import 'package:qr_app/pages/mapa_page.dart';
import 'package:qr_app/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'mapa': (_) => const MapPage()
        },
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.deepPurple,
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.deepPurple)),
      ),
    );
  }
}
