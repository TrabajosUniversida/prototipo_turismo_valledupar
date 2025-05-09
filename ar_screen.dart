import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class ARScreen extends StatefulWidget {
  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ArCoreController arCoreController;

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _add3DModel();
  }

  void _add3DModel() {
    final node = ArCoreReferenceNode(
      name: "monumento",
      objectUrl: "https://modelviewer.dev/shared-assets/models/Astronaut.glb",
      scale: Vector3(0.5, 0.5, 0.5),
      position: Vector3(0, 0, -1),
    );
    arCoreController.addArCoreNodeWithAnchor(node);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Modelo RA")),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }
}