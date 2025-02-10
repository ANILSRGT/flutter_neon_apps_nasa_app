extension UtilDoubleExtension on double {
  _UtilDoubleExtension get extUtil => _UtilDoubleExtension(this);
}

class _UtilDoubleExtension {
  const _UtilDoubleExtension(this._value);

  final double _value;

  double get fahrenheitToCelsius => (_value - 32) * 5 / 9;
  double get celsiusToFahrenheit => (_value * 9 / 5) + 32;
}
