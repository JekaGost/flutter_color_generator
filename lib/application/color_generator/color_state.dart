import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_state.freezed.dart';

@freezed
/// The ColorState class represents the state of the background color
/// in the application. It is an immutable class that holds a single property,
/// backgroundColor, which is of type Color.
abstract class ColorState with _$ColorState {
  /// Creates a new instance of the ColorState.
  const factory ColorState({required Color backgroundColor}) = _Initial;
  const ColorState._();
}
