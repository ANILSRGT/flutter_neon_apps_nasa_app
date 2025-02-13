extension WhereIterableExtension<E> on Iterable<E> {
  _WhereIterableExtension<E> get extWhere => _WhereIterableExtension(this);
}

class _WhereIterableExtension<E> {
  const _WhereIterableExtension(this._value);

  final Iterable<E> _value;

  E? firstWhereOrNull(bool Function(E element) test) {
    final list = _value.where(test).toList();
    return list.isEmpty ? null : list.first;
  }
}
