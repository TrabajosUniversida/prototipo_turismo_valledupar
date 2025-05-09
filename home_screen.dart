import 'package:flutter/material.dart';
import 'places_screen.dart';
import 'map_screen.dart';
import 'ar_screen.dart';
import 'feedback_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _menu = [
    {'title': 'Lugares', 'screen': PlacesScreen()},
    {'title': 'Mapa', 'screen': MapScreen()},
    {'title': 'RA', 'screen': ARScreen()},
    {'title': 'Retroalimentación', 'screen': FeedbackScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Turismo Valledupar')),
      body: ListView.builder(
        itemCount: _menu.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(_menu[i]['title']),
          trailing: Icon(Icons.arrow_forward),
          onTap: () => Navigator.push(
            ctx,
            MaterialPageRoute(builder: (_) => _menu[i]['screen']),
          ),
        ),
      ),
    );
  }
}