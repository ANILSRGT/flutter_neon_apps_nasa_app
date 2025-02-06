import 'package:flutter/material.dart';

extension ScreenBoxConstraintsExtension on BoxConstraints {
  _ScreenBoxConstraintsExtension get extScreen =>
      _ScreenBoxConstraintsExtension(this);
}

class _ScreenBoxConstraintsExtension {
  const _ScreenBoxConstraintsExtension(this._value);

  final BoxConstraints _value;

  T byOrientation<T>({
    required T landscape,
    required T portrait,
  }) {
    return _value.maxWidth > _value.maxHeight ? landscape : portrait;
  }
}
