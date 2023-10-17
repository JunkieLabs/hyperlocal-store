// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_states.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductsBlocStateCWProxy {
  ProductsBlocState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductsBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductsBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductsBlocState call({
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductsBlocState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductsBlocState.copyWith.fieldName(...)`
class _$ProductsBlocStateCWProxyImpl implements _$ProductsBlocStateCWProxy {
  const _$ProductsBlocStateCWProxyImpl(this._value);

  final ProductsBlocState _value;

  @override
  ProductsBlocState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductsBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductsBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductsBlocState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return ProductsBlocState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $ProductsBlocStateCopyWith on ProductsBlocState {
  /// Returns a callable class that can be used as follows: `instanceOfProductsBlocState.copyWith(...)` or like so:`instanceOfProductsBlocState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductsBlocStateCWProxy get copyWith =>
      _$ProductsBlocStateCWProxyImpl(this);
}
