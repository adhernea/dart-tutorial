# Dart Tutorial

Tutorial sencillo de conceptos clave de **Dart**, organizado como una aplicación de línea de comandos y acompañado de ejemplos, utilidades y tests.

## 📋 Descripción

Este repositorio sirve como espacio de aprendizaje y experimentación con Dart. La aplicación principal es una aplicación de consola cuyo punto de entrada está en `bin/`, mientras que el código de ejemplo se encuentra principalmente en `lib/`.

El proyecto también incluye un workspace independiente para ejemplos relacionados con datos JSON.

## 🛠️ Requisitos

El proyecto requiere:

* **Dart SDK:** `^3.12.2`
* `intl`: `^0.20.3`
* `path`: `^1.9.0`
* `lints`: `^6.0.0`
* `test`: `^1.25.6`

Las dependencias y la versión de Dart están definidas en `pubspec.yaml`.

## 📁 Estructura

```text
dart-tutorial/
├── bin/
│   └── tutorial_app.dart
│
├── lib/
│   ├── async/
│   ├── classes/
│   └── utils.dart
│
├── json_data/
│   ├── lib/
│   └── pubspec.yaml
│
├── test/
│   └── nombre_proyecto_test.dart
│
├── analysis_options.yaml
├── CHANGELOG.md
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

| Directorio   | Descripción                                                                                                                                                                                                                               |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `bin/`       | Contiene el punto de entrada de la aplicación con el ejecutable principal del proyecto: `bin/tutorial_app.dart`.                                                                                                                          |
| `lib/`       | Contiene el código utilizado en el tutorial organizado en:<br>• `async/` — ejemplos relacionados con programación asíncrona.<br>• `classes/` — ejemplos relacionados con clases.<br>• `utils.dart` — funciones y utilidades compartidas. |
| `json_data/` | Es un workspace de Dart incluido dentro del proyecto principal. Dispone de su propio `lib/` y `pubspec.yaml`, y está declarado como workspace desde el `pubspec.yaml` raíz.                                                               |
| `test/`      | Contiene las pruebas del proyecto, es decir, ninguna.                                                                                                                                                                                     |


## ▶️ Comandos del proyecto

- Clona el repositorio e instala las dependencias con:

```bash
git clone https://github.com/adhernea/dart-tutorial.git
cd dart-tutorial
dart pub get
```

- Puedes ejecutar la aplicación desde la raíz del proyecto:

```bash
dart run
```

- O indicar directamente el punto de entrada:

```bash
dart run bin/tutorial_app.dart
```

- No hay **test**, pero si quisieras hacer, se ejecutan las pruebas con:

```bash
dart test
```

- El proyecto utiliza `lints` y dispone de `analysis_options.yaml`, por lo que puedes ejecutar el analizador estático de Dart:

```bash
dart analyze
```

## 📚 Conceptos

El repositorio está estructurado alrededor de distintos conceptos del lenguaje Dart, entre ellos:

* Clases y programación orientada a objetos.
* Programación asíncrona.
* Funciones y utilidades.
* Organización de proyectos Dart.
* Gestión de dependencias con `pub`.
* Trabajo con datos JSON.

Los ejemplos están distribuidos principalmente dentro de `lib/` y `json_data/`.


## 📖 Documentación oficial

[Dart Documentation](https://dart.dev/docs)

---

> Proyecto orientado al aprendizaje y a la práctica de conceptos fundamentales de Dart mediante ejemplos ejecutables.
