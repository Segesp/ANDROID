# Desarrollo de aplicaciones Android con Flutter

Este repositorio contiene la configuración completa para desarrollar aplicaciones Android utilizando Flutter.

## 🚀 Configuración del Entorno

### Prerrequisitos

1. **Flutter SDK**: Descarga e instala Flutter desde [flutter.dev](https://flutter.dev/docs/get-started/install)
2. **Android Studio**: Instala Android Studio con el Android SDK
3. **Java JDK**: JDK 8 o superior (Java 17+ recomendado)
4. **Dispositivo Android o Emulador**: Para pruebas

### Instalación Rápida

1. Clona este repositorio:
```bash
git clone <repository-url>
cd ANDROID
```

2. Ejecuta el script de configuración:
```bash
./setup_dev_env.sh
```

3. O configura manualmente:
```bash
# Obtener dependencias
flutter pub get

# Verificar configuración
flutter doctor

# Ejecutar la aplicación
flutter run
```

## 📱 Estructura del Proyecto

```
ANDROID/
├── android/                    # Configuración específica de Android
│   ├── app/
│   │   ├── build.gradle       # Configuración de la aplicación Android
│   │   └── src/main/
│   │       ├── AndroidManifest.xml
│   │       └── kotlin/        # Código nativo Android (Kotlin)
│   ├── build.gradle           # Configuración del proyecto Android
│   ├── gradle.properties      # Propiedades de Gradle
│   └── settings.gradle        # Configuración de Gradle
├── lib/
│   └── main.dart              # Punto de entrada de la aplicación Flutter
├── test/
│   └── widget_test.dart       # Pruebas de widgets
├── pubspec.yaml               # Dependencias y configuración de Flutter
├── analysis_options.yaml     # Reglas de análisis de código
└── README.md                  # Este archivo
```

## 🛠️ Comandos Útiles

### Desarrollo
```bash
# Ejecutar en modo debug
flutter run

# Ejecutar en dispositivo específico
flutter run -d <device-id>

# Hot reload (recarga en caliente)
# Presiona 'r' en la terminal mientras la app está ejecutándose

# Hot restart (reinicio en caliente)  
# Presiona 'R' en la terminal mientras la app está ejecutándose
```

### Testing
```bash
# Ejecutar todas las pruebas
flutter test

# Ejecutar pruebas específicas
flutter test test/widget_test.dart
```

### Build y Deploy
```bash
# Build para debug
flutter build apk --debug

# Build para release
flutter build apk --release

# Build App Bundle para Google Play Store
flutter build appbundle --release
```

### Análisis de Código
```bash
# Analizar código
flutter analyze

# Formatear código
dart format .
```

## 🔧 Configuración de Android

### SDK y APIs
- **Compile SDK**: 34 (Android 14)
- **Min SDK**: 21 (Android 5.0)
- **Target SDK**: 34 (Android 14)

### Características Habilitadas
- **AndroidX**: Habilitado
- **Jetifier**: Habilitado
- **Material Design**: Habilitado
- **Kotlin**: Configurado para desarrollo nativo

## 📋 Checklist de Desarrollo

- [x] ✅ Configuración básica de Flutter
- [x] ✅ Configuración de Android con Gradle
- [x] ✅ Estructura de carpetas estándar
- [x] ✅ Aplicación de ejemplo funcional
- [x] ✅ Pruebas unitarias básicas
- [x] ✅ Configuración de análisis de código
- [x] ✅ Scripts de desarrollo
- [ ] 🔄 Configuración de CI/CD (próximamente)
- [ ] 🔄 Integración con servicios de Google (próximamente)

## 🚨 Solución de Problemas

### Error: "Flutter not found"
Asegúrate de que Flutter esté en tu PATH:
```bash
export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
```

### Error: "Android licenses not accepted"
Ejecuta:
```bash
flutter doctor --android-licenses
```

### Error de compilación en Android
1. Verifica que Android Studio esté instalado
2. Ejecuta `flutter doctor` para diagnosticar problemas
3. Asegúrate de tener el Android SDK actualizado

## 📚 Recursos Adicionales

- [Documentación oficial de Flutter](https://flutter.dev/docs)
- [Guía de desarrollo para Android](https://flutter.dev/docs/development/platform-integration/android)
- [Material Design Components](https://material.io/components)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

## 🤝 Contribución

1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -am 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Crea un Pull Request

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo `LICENSE` para más detalles.