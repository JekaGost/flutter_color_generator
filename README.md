# Solid Color Generator

A minimalistic application written by Flutter as a test task to interview for a junior position at **Solid Software**.

This app changes its background color when you tap anywhere on the screen (except the control areas of the phone interface).

## Features

* **Each time you click on the screen, it randomly selects one of 16,777,216 possible RGB combinations.
* **When switching colors, a smooth color transition animation is applied, which provides comfort for the eyes.

## Technical Aspects

* **This project uses the principle of Clean Architecture, which makes it easier to work with code and keeps it organized. Helps separate business logic from the user interface presentation layer to ensure scalability and testability.
* **It uses Cubit, which belongs to the 'flutter_bloc' library and is responsible for State Management and buisiness logic. Due to Cubit, the logic for generating random numbers (RGB) is located in a separate file from the screen widget.
* **Uses Freezed, which is responsible for the data model (ColorState). Freezed makes all fileds 'final' and ensures that no one accidentally overwrites the current object. It also simplifies routine work and generates most of the code that is placed in '.freezed.dart' files.

## Getting Started

To run this project locally, follow these steps:

### Required conditions
Make sure you have Flutter (https:docs.flutter.dev/get-started/install) installed on your computer.

### Installation

1. **Clone the repository**
git clone <your-repository-url>
cd flutter_color_generator

2. **Install dependencies**
flutter pub get

3. **Generate Freezed data classes**
dart run build_runner build

4. **Run the application**
flutter run

###