import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';

extension RadiusAppDoubleValuesExtension on AppDoubleValues {
  _RadiusAppDoubleValuesExtension get extRadius =>
      _RadiusAppDoubleValuesExtension(this);
}

class _RadiusAppDoubleValuesExtension {
  const _RadiusAppDoubleValuesExtension(this._value);

  final AppDoubleValues _value;

  Radius get all => Radius.circular(_value.value);

  _BorderRadiusAppDoubleValuesExtension get border =>
      _BorderRadiusAppDoubleValuesExtension(_value);
}

class _BorderRadiusAppDoubleValuesExtension {
  const _BorderRadiusAppDoubleValuesExtension(this._value);

  final AppDoubleValues _value;

  BorderRadius get all => BorderRadius.circular(_value.value);
  _BorderRadiusAppDoubleValuesSymmetricExtension get symmetric =>
      _BorderRadiusAppDoubleValuesSymmetricExtension(_value);
  _BorderRadiusAppDoubleValuesOnlyExtension get only =>
      _BorderRadiusAppDoubleValuesOnlyExtension(_value);
}

class _BorderRadiusAppDoubleValuesSymmetricExtension {
  const _BorderRadiusAppDoubleValuesSymmetricExtension(this._value);

  final AppDoubleValues _value;

  BorderRadius get vertical => BorderRadius.vertical(
        bottom: Radius.circular(_value.value),
        top: Radius.circular(_value.value),
      );
  BorderRadius get horizontal => BorderRadius.horizontal(
        left: Radius.circular(_value.value),
        right: Radius.circular(_value.value),
      );
}

class _BorderRadiusAppDoubleValuesOnlyExtension {
  const _BorderRadiusAppDoubleValuesOnlyExtension(this._value);

  final AppDoubleValues _value;

  BorderRadius get l => BorderRadius.only(
        topLeft: Radius.circular(_value.value),
        bottomLeft: Radius.circular(_value.value),
      );
  BorderRadius get t => BorderRadius.only(
        topLeft: Radius.circular(_value.value),
        topRight: Radius.circular(_value.value),
      );
  BorderRadius get r => BorderRadius.only(
        topRight: Radius.circular(_value.value),
        bottomRight: Radius.circular(_value.value),
      );
  BorderRadius get b => BorderRadius.only(
        bottomLeft: Radius.circular(_value.value),
        bottomRight: Radius.circular(_value.value),
      );

  BorderRadius get lt => BorderRadius.only(
        topLeft: Radius.circular(_value.value),
      );
  BorderRadius get lb => BorderRadius.only(
        bottomLeft: Radius.circular(_value.value),
      );
  BorderRadius get rt => BorderRadius.only(
        topRight: Radius.circular(_value.value),
      );
  BorderRadius get rb => BorderRadius.only(
        bottomRight: Radius.circular(_value.value),
      );
}
