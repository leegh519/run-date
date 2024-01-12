// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Competition _$CompetitionFromJson(Map<String, dynamic> json) {
  return _Competition.fromJson(json);
}

/// @nodoc
mixin _$Competition {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  bool get major => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompetitionCopyWith<Competition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionCopyWith<$Res> {
  factory $CompetitionCopyWith(
          Competition value, $Res Function(Competition) then) =
      _$CompetitionCopyWithImpl<$Res, Competition>;
  @useResult
  $Res call(
      {int id,
      String title,
      String place,
      DateTime date,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String? url,
      bool major,
      String event});
}

/// @nodoc
class _$CompetitionCopyWithImpl<$Res, $Val extends Competition>
    implements $CompetitionCopyWith<$Res> {
  _$CompetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? place = null,
    Object? date = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? url = freezed,
    Object? major = null,
    Object? event = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as bool,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompetitionImplCopyWith<$Res>
    implements $CompetitionCopyWith<$Res> {
  factory _$$CompetitionImplCopyWith(
          _$CompetitionImpl value, $Res Function(_$CompetitionImpl) then) =
      __$$CompetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String place,
      DateTime date,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate,
      String? url,
      bool major,
      String event});
}

/// @nodoc
class __$$CompetitionImplCopyWithImpl<$Res>
    extends _$CompetitionCopyWithImpl<$Res, _$CompetitionImpl>
    implements _$$CompetitionImplCopyWith<$Res> {
  __$$CompetitionImplCopyWithImpl(
      _$CompetitionImpl _value, $Res Function(_$CompetitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? place = null,
    Object? date = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? url = freezed,
    Object? major = null,
    Object? event = null,
  }) {
    return _then(_$CompetitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as bool,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompetitionImpl extends _Competition {
  const _$CompetitionImpl(
      {required this.id,
      required this.title,
      required this.place,
      required this.date,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.url,
      required this.major,
      required this.event})
      : super._();

  factory _$CompetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompetitionImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String place;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  final String? url;
  @override
  final bool major;
  @override
  final String event;

  @override
  String toString() {
    return 'Competition(id: $id, title: $title, place: $place, date: $date, startDate: $startDate, endDate: $endDate, url: $url, major: $major, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, place, date,
      startDate, endDate, url, major, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetitionImplCopyWith<_$CompetitionImpl> get copyWith =>
      __$$CompetitionImplCopyWithImpl<_$CompetitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompetitionImplToJson(
      this,
    );
  }
}

abstract class _Competition extends Competition {
  const factory _Competition(
      {required final int id,
      required final String title,
      required final String place,
      required final DateTime date,
      @JsonKey(name: 'start_date') required final DateTime startDate,
      @JsonKey(name: 'end_date') required final DateTime endDate,
      required final String? url,
      required final bool major,
      required final String event}) = _$CompetitionImpl;
  const _Competition._() : super._();

  factory _Competition.fromJson(Map<String, dynamic> json) =
      _$CompetitionImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get place;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  String? get url;
  @override
  bool get major;
  @override
  String get event;
  @override
  @JsonKey(ignore: true)
  _$$CompetitionImplCopyWith<_$CompetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
