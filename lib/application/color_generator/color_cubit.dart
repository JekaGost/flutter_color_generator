import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_color_gen/application/color_generator/color_state.dart';
import 'package:solid_color_gen/core/color_config.dart';

/// The ColorCubit class manages the state of the background color in
/// the application. It extends Cubit with a ColorState, allowing it
/// to emit new states when the color changes.
class ColorCubit extends Cubit<ColorState> {
  /// Creates a new instance of the ColorCubit.
  ColorCubit()
    : super(const ColorState(backgroundColor: Colors.lightGreenAccent));

  /// Changes the background color to a new random color. It generates
  /// random values for red, green, and blue channels, creates a new Color
  void changeColor() {
    final random = Random();

    final int r = random.nextInt(256);
    final int g = random.nextInt(256);
    final int b = random.nextInt(256);

    final Color newColor = Color.fromARGB(ColorConfig.maxColorValue, r, g, b);
    emit(state.copyWith(backgroundColor: newColor));
  }
}
