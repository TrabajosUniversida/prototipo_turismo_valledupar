import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  final List<Map<String, String>> _places = [
    {'name': 'Río Guatapurí', 'description': 'Balneario natural de aguas cristalinas.'},
    {'name': 'Parque de la Leyenda Vallenata', 'description': 'Escenario de eventos culturales y musicales.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lugares Turísticos')),
      body: ListView.builder(
        itemCount: _places.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(_places[i]['name']!),
          subtitle: Text(_places[i]['description']!),
        ),
      ),
    );
  }
}