// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompetitionImpl _$$CompetitionImplFromJson(Map<String, dynamic> json) =>
    _$CompetitionImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      place: json['place'] as String,
      date: DateTime.parse(json['date'] as String),
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      url: json['url'] as String?,
      major: json['major'] as bool,
      event: json['event'] as String,
    );

Map<String, dynamic> _$$CompetitionImplToJson(_$CompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'place': instance.place,
      'date': instance.date.toIso8601String(),
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'url': instance.url,
      'major': instance.major,
      'event': instance.event,
    };
