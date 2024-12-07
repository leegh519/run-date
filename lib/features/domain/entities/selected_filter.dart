import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_filter.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SelectedFilter with _$SelectedFilter {
  const SelectedFilter._();

  const factory SelectedFilter({
    @Default([]) List<String> month,
    @Default([]) List<String> reception,
    @Default([]) List<String> event,
    @Default([]) List<String> region,
    @Default([]) List<String> year,
    // @Default([]) List<String> notificationOnOff,
  }) = _SelectedFilter;

  List<String> get allFilters => [
        ...month,
        ...reception,
        ...event,
        ...region,
        ...year
        // ...notificationOnOff,
      ];
}
