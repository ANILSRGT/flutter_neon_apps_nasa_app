import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';

extension PaddingContextExtension on AppDoubleValues {
  _PaddingContextExtension get extPadding => _PaddingContextExtension(this);
}

class _PaddingContextExtension {
  const _PaddingContextExtension(this._value);

  final AppDoubleValues _value;

  EdgeInsetsGeometry get all => EdgeInsets.all(_value.value);
  _PaddingContextSymmetricExtension get symmetric =>
      _PaddingContextSymmetricExtension(_value);
  _PaddingContextOnlyExtension get only => _PaddingContextOnlyExtension(_value);
}

class _PaddingContextSymmetricExtension {
  const _PaddingContextSymmetricExtension(this._value);

  final AppDoubleValues _value;

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: _value.value);
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: _value.value);
}

class _PaddingContextOnlyExtension {
  const _PaddingContextOnlyExtension(this._value);

  final AppDoubleValues _value;

  EdgeInsets get l => EdgeInsets.only(left: _value.value);
  EdgeInsets get t => EdgeInsets.only(top: _value.value);
  EdgeInsets get r => EdgeInsets.only(right: _value.value);
  EdgeInsets get b => EdgeInsets.only(bottom: _value.value);

  EdgeInsets get lt => EdgeInsets.only(left: _value.value, top: _value.value);
  EdgeInsets get lb =>
      EdgeInsets.only(left: _value.value, bottom: _value.value);
  EdgeInsets get rt => EdgeInsets.only(right: _value.value, top: _value.value);
  EdgeInsets get rb =>
      EdgeInsets.only(right: _value.value, bottom: _value.value);
}
