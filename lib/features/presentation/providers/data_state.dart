import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
sealed class DataState with _$DataState {
  const factory DataState.loading() = Loading;
  const factory DataState.data() = Data;
  const factory DataState.error({
    required Exception error,
    required StackTrace stackTrace,
  }) = Error;
}
