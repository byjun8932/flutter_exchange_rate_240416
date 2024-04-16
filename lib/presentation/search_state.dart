import 'package:freezed_annotation/freezed_annotation.dart';


import '../data/model/exchange_rate.dart';

part 'search_state.freezed.dart';

part 'search_state.g.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(ExchangeRate(baseCode: '', conversionRates: {},)) ExchangeRate exchangeRate,
    @Default(false) bool isLoading,
  }) = _SearchState;

  factory SearchState.fromJson(Map<String, Object?> json) => _$SearchStateFromJson(json);
}