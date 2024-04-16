import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';

part 'exchange_rate.g.dart';

@freezed
class ExchangeRate with _$ExchangeRate {
  const factory ExchangeRate({

  }) = _ExchangeRate;

  factory ExchangeRate.fromJson(Map<String, Object?> json) => _$ExchangeRateFromJson(json);
}