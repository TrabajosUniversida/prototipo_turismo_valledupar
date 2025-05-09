# Turismo Valledupar - Prototipo Flutter con Realidad Aumentada

Este proyecto es un prototipo funcional TRL5 de una aplicación móvil Flutter que integra Realidad Aumentada (ARCore) para promocionar el turismo sostenible en Valledupar.

## 📦 Estructura del Proyecto

```
prototipo_turismo_valledupar/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── places_screen.dart
│   │   ├── map_screen.dart
│   │   ├── ar_screen.dart
│   │   └── feedback_screen.dart
├── pubspec.yaml
├── assets/
├── README.md
```

## 🚀 Instrucciones de ejecución

1. Clona este repositorio:
```bash
git clone https://github.com/TU_USUARIO/prototipo_turismo_valledupar.git
cd prototipo_turismo_valledupar
```

2. Instala las dependencias:
```bash
flutter pub get
```

3. Conecta un dispositivo Android físico compatible con ARCore.

4. Ejecuta la app:
```bash
flutter run
```

## 🛠 Tecnologías utilizadas

- Flutter
- arcore_flutter_plugin
- vector_math

## ⚙️ Permisos requeridos (Android)

Edita `android/app/src/main/AndroidManifest.xml` y añade:

```xml
<uses-permission android:name="android.permission.CAMERA"/>
<uses-feature android:name="android.hardware.camera.ar" android:required="true"/>
```

## 🌐 Modelo 3D de ejemplo

El prototipo incluye un modelo `.glb` de prueba desde:

```
https://modelviewer.dev/shared-assets/models/Astronaut.glb
```

Puedes reemplazar esta URL por un modelo propio subido a GitHub, Firebase o Sketchfab.

## 🧠 Créditos

Proyecto desarrollado como parte del curso de Proyecto de Grado - Ingeniería de Sistemas - UNAD.
