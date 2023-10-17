// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_states.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductDetailBlocStateCWProxy {
  ProductDetailBlocState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductDetailBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductDetailBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductDetailBlocState call({
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductDetailBlocState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductDetailBlocState.copyWith.fieldName(...)`
class _$ProductDetailBlocStateCWProxyImpl
    implements _$ProductDetailBlocStateCWProxy {
  const _$ProductDetailBlocStateCWProxyImpl(this._value);

  final ProductDetailBlocState _value;

  @override
  ProductDetailBlocState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductDetailBlocState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductDetailBlocState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductDetailBlocState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return ProductDetailBlocState(
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $ProductDetailBlocStateCopyWith on ProductDetailBlocState {
  /// Returns a callable class that can be used as follows: `instanceOfProductDetailBlocState.copyWith(...)` or like so:`instanceOfProductDetailBlocState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductDetailBlocStateCWProxy get copyWith =>
      _$ProductDetailBlocStateCWProxyImpl(this);
}
