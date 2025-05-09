import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Retroalimentación')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'Nombre')),
              TextFormField(
                decoration: InputDecoration(labelText: 'Comentarios'),
                maxLines: 3,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Gracias por tu opinión')),
                    );
                  }
                },
                child: Text('Enviar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}