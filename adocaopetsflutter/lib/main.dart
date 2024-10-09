import 'package:adocaopetsflutter/screens/adoptedPetsScreen.dart';
import 'package:adocaopetsflutter/screens/dashboardScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adoção de Pets',
      theme: ThemeData(
        // Aplicando a fonte 'monospace' globalmente
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontFamily: 'monospace'), // Substituto do bodyText2
          labelLarge:
              TextStyle(fontFamily: 'monospace'), // Substituto do button
          titleLarge:
              TextStyle(fontFamily: 'monospace'), // Substituto do headline6
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
      routes: {
        '/adoptedPets': (context) => const AdoptedPetsScreen(),
      },
    );
  }
}
