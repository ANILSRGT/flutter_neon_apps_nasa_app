import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';

extension SizedboxAppDoubleValuesExtension on AppDoubleValues {
  _SizedboxAppDoubleValuesExtension get extSizedbox =>
      _SizedboxAppDoubleValuesExtension(this);
}

class _SizedboxAppDoubleValuesExtension {
  const _SizedboxAppDoubleValuesExtension(this._value);

  final AppDoubleValues _value;

  SizedBox get all {
    return SizedBox(height: _value.value, width: _value.value);
  }

  SizedBox get width {
    return SizedBox(width: _value.value);
  }

  SizedBox get height {
    return SizedBox(height: _value.value);
  }
}
