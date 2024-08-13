import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universidad App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/news': (context) => NewsScreen(),
        '/tasks': (context) => TasksScreen(),
        '/currency': (context) => CurrencyConverterScreen(),
        '/podcast': (context) => PodcastScreen(),
      },
    );
  }
  
  NewsScreen() {}
  
  TasksScreen() {}
  
  CurrencyConverterScreen() {}
  
  PodcastScreen() {}
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/news');
            },
          ),
          ListTile(
            title: Text('Lista de Tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/tasks');
            },
          ),
          ListTile(
            title: Text('Cambio de Monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/currency');
            },
          ),
          ListTile(
            title: Text('Podcast'),
            onTap: () {
              Navigator.pushNamed(context, '/podcast');
            },
          ),
        ],
      ),
    );
  }
}
