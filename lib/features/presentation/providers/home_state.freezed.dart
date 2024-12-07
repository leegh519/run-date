// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  List<Competition> get competitions => throw _privateConstructorUsedError;
  List<Competition> get allCompetitions => throw _privateConstructorUsedError;
  List<int> get notificationList => throw _privateConstructorUsedError;
  SelectedFilter get selectedFilter => throw _privateConstructorUsedError;
  DataState get status => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Competition> competitions,
      List<Competition> allCompetitions,
      List<int> notificationList,
      SelectedFilter selectedFilter,
      DataState status});

  $SelectedFilterCopyWith<$Res> get selectedFilter;
  $DataStateCopyWith<$Res> get status;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitions = null,
    Object? allCompetitions = null,
    Object? notificationList = null,
    Object? selectedFilter = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      competitions: null == competitions
          ? _value.competitions
          : competitions // ignore: cast_nullable_to_non_nullable
              as List<Competition>,
      allCompetitions: null == allCompetitions
          ? _value.allCompetitions
          : allCompetitions // ignore: cast_nullable_to_non_nullable
              as List<Competition>,
      notificationList: null == notificationList
          ? _value.notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as SelectedFilter,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataState,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectedFilterCopyWith<$Res> get selectedFilter {
    return $SelectedFilterCopyWith<$Res>(_value.selectedFilter, (value) {
      return _then(_value.copyWith(selectedFilter: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<$Res> get status {
    return $DataStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Competition> competitions,
      List<Competition> allCompetitions,
      List<int> notificationList,
      SelectedFilter selectedFilter,
      DataState status});

  @override
  $SelectedFilterCopyWith<$Res> get selectedFilter;
  @override
  $DataStateCopyWith<$Res> get status;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitions = null,
    Object? allCompetitions = null,
    Object? notificationList = null,
    Object? selectedFilter = null,
    Object? status = null,
  }) {
    return _then(_$HomeStateImpl(
      competitions: null == competitions
          ? _value._competitions
          : competitions // ignore: cast_nullable_to_non_nullable
              as List<Competition>,
      allCompetitions: null == allCompetitions
          ? _value._allCompetitions
          : allCompetitions // ignore: cast_nullable_to_non_nullable
              as List<Competition>,
      notificationList: null == notificationList
          ? _value._notificationList
          : notificationList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as SelectedFilter,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataState,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<Competition> competitions = const [],
      final List<Competition> allCompetitions = const [],
      final List<int> notificationList = const [],
      this.selectedFilter = const SelectedFilter(),
      this.status = const DataState.loading()})
      : _competitions = competitions,
        _allCompetitions = allCompetitions,
        _notificationList = notificationList;

  final List<Competition> _competitions;
  @override
  @JsonKey()
  List<Competition> get competitions {
    if (_competitions is EqualUnmodifiableListView) return _competitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_competitions);
  }

  final List<Competition> _allCompetitions;
  @override
  @JsonKey()
  List<Competition> get allCompetitions {
    if (_allCompetitions is EqualUnmodifiableListView) return _allCompetitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCompetitions);
  }

  final List<int> _notificationList;
  @override
  @JsonKey()
  List<int> get notificationList {
    if (_notificationList is EqualUnmodifiableListView)
      return _notificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationList);
  }

  @override
  @JsonKey()
  final SelectedFilter selectedFilter;
  @override
  @JsonKey()
  final DataState status;

  @override
  String toString() {
    return 'HomeState(competitions: $competitions, allCompetitions: $allCompetitions, notificationList: $notificationList, selectedFilter: $selectedFilter, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._competitions, _competitions) &&
            const DeepCollectionEquality()
                .equals(other._allCompetitions, _allCompetitions) &&
            const DeepCollectionEquality()
                .equals(other._notificationList, _notificationList) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_competitions),
      const DeepCollectionEquality().hash(_allCompetitions),
      const DeepCollectionEquality().hash(_notificationList),
      selectedFilter,
      status);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<Competition> competitions,
      final List<Competition> allCompetitions,
      final List<int> notificationList,
      final SelectedFilter selectedFilter,
      final DataState status}) = _$HomeStateImpl;

  @override
  List<Competition> get competitions;
  @override
  List<Competition> get allCompetitions;
  @override
  List<int> get notificationList;
  @override
  SelectedFilter get selectedFilter;
  @override
  DataState get status;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
