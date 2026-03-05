# Solid Color Generator

<p align="center">
  <img src="assets/icon/app_icon.png" width="150" alt="Solid Color Generator Logo">
</p>

A minimalistic application written by Flutter as a test task to interview for a junior position at **Solid Software**.

This app changes its background color when you tap anywhere on the screen (except the control areas of the phone interface).

![App Demo](assets/gif/demo.gif)

## Features

* Each time you click on the screen, it randomly selects one of 16,777,216 possible RGB combinations.
* When switching colors, a smooth color transition animation is applied, which provides comfort for the eyes.

## Technical Aspects

* This project uses the principle of Clean Architecture, which makes it easier to work with code and keeps it organized. Helps separate business logic from the user interface presentation layer to ensure scalability and testability.
* It uses Cubit, which belongs to the 'flutter_bloc' library and is responsible for State Management and buisiness logic. Due to Cubit, the logic for generating random numbers (RGB) is located in a separate file from the screen widget.
* Uses Freezed, which is responsible for the data model (ColorState). Freezed makes all fileds 'final' and ensures that no one accidentally overwrites the current object. It also simplifies routine work and generates most of the code that is placed in '.freezed.dart' files.

## Getting Started

To run this project locally, follow these steps:

### Required conditions
Make sure you have [Flutter](https:docs.flutter.dev/get-started/install) installed on your computer.

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/JekaGost/flutter_color_generator
```
```bash
cd flutter_color_generator
```
2. **Install dependencies**
```bash
flutter pub get
```
3. **Generate Freezed data classes**
```bash
dart run build_runner build --delete-conflicting-outputs
```
4. **Run the application**
```bash
flutter run
```
## License
This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

###