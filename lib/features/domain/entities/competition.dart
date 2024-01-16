import 'package:freezed_annotation/freezed_annotation.dart';

part 'competition.g.dart';
part 'competition.freezed.dart';

@freezed
class Competition with _$Competition {
  const Competition._();

  const factory Competition({
    required int id,
    required String title,
    required String place,
    required DateTime date,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
    required String? url,
    required bool major,
    required String event,
    required String region,
  }) = _Competition;

  List<String> get eventList {
    return event.split(',');
  }

  factory Competition.fromJson(Map<String, Object?> json) =>
      _$CompetitionFromJson(json);
}
