// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectedFilter {
  List<String> get month => throw _privateConstructorUsedError;
  List<String> get reception => throw _privateConstructorUsedError;
  List<String> get event => throw _privateConstructorUsedError;
  List<String> get region => throw _privateConstructorUsedError;
  List<String> get year => throw _privateConstructorUsedError;

  /// Create a copy of SelectedFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedFilterCopyWith<SelectedFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedFilterCopyWith<$Res> {
  factory $SelectedFilterCopyWith(
          SelectedFilter value, $Res Function(SelectedFilter) then) =
      _$SelectedFilterCopyWithImpl<$Res, SelectedFilter>;
  @useResult
  $Res call(
      {List<String> month,
      List<String> reception,
      List<String> event,
      List<String> region,
      List<String> year});
}

/// @nodoc
class _$SelectedFilterCopyWithImpl<$Res, $Val extends SelectedFilter>
    implements $SelectedFilterCopyWith<$Res> {
  _$SelectedFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? reception = null,
    Object? event = null,
    Object? region = null,
    Object? year = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reception: null == reception
          ? _value.reception
          : reception // ignore: cast_nullable_to_non_nullable
              as List<String>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as List<String>,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedFilterImplCopyWith<$Res>
    implements $SelectedFilterCopyWith<$Res> {
  factory _$$SelectedFilterImplCopyWith(_$SelectedFilterImpl value,
          $Res Function(_$SelectedFilterImpl) then) =
      __$$SelectedFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> month,
      List<String> reception,
      List<String> event,
      List<String> region,
      List<String> year});
}

/// @nodoc
class __$$SelectedFilterImplCopyWithImpl<$Res>
    extends _$SelectedFilterCopyWithImpl<$Res, _$SelectedFilterImpl>
    implements _$$SelectedFilterImplCopyWith<$Res> {
  __$$SelectedFilterImplCopyWithImpl(
      _$SelectedFilterImpl _value, $Res Function(_$SelectedFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? reception = null,
    Object? event = null,
    Object? region = null,
    Object? year = null,
  }) {
    return _then(_$SelectedFilterImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reception: null == reception
          ? _value.reception
          : reception // ignore: cast_nullable_to_non_nullable
              as List<String>,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<String>,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as List<String>,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SelectedFilterImpl extends _SelectedFilter {
  const _$SelectedFilterImpl(
      {this.month = const [],
      this.reception = const [],
      this.event = const [],
      this.region = const [],
      this.year = const []})
      : super._();

  @override
  @JsonKey()
  final List<String> month;
  @override
  @JsonKey()
  final List<String> reception;
  @override
  @JsonKey()
  final List<String> event;
  @override
  @JsonKey()
  final List<String> region;
  @override
  @JsonKey()
  final List<String> year;

  @override
  String toString() {
    return 'SelectedFilter(month: $month, reception: $reception, event: $event, region: $region, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedFilterImpl &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.reception, reception) &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(reception),
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(year));

  /// Create a copy of SelectedFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedFilterImplCopyWith<_$SelectedFilterImpl> get copyWith =>
      __$$SelectedFilterImplCopyWithImpl<_$SelectedFilterImpl>(
          this, _$identity);
}

abstract class _SelectedFilter extends SelectedFilter {
  const factory _SelectedFilter(
      {final List<String> month,
      final List<String> reception,
      final List<String> event,
      final List<String> region,
      final List<String> year}) = _$SelectedFilterImpl;
  const _SelectedFilter._() : super._();

  @override
  List<String> get month;
  @override
  List<String> get reception;
  @override
  List<String> get event;
  @override
  List<String> get region;
  @override
  List<String> get year;

  /// Create a copy of SelectedFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedFilterImplCopyWith<_$SelectedFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
