import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit()
    : super(const ColorState(backgroundColor: Colors.lightGreenAccent));

  void changeColor() {
    final random = Random();

    final int r = random.nextInt(256);
    final int g = random.nextInt(256);
    final int b = random.nextInt(256);

    final Color newColor = Color.fromARGB(255, r, g, b);
    emit(state.copyWith(backgroundColor: newColor));
  }
}
