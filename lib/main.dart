import 'package:flutter/material.dart';
import 'package:peliculas/pantallas/pantallas.dart';
import 'package:peliculas/provider/movies_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'detalles': (_) => DetallesScreen(),
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: Colors.indigo)),
    );
  }
}
