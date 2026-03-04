import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_state.freezed.dart';

@freezed
class ColorState with _$ColorState {
  const factory ColorState({
    required Color backgroundColor,
  }) = _Initial;

  @override
  Color get backgroundColor => throw UnimplementedError();
}
