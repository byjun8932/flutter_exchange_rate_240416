import '../dto/exchange_dto.dart';
import '../model/exchange_rate.dart';

extension ToExchangeRate on ExchangeDto {
  ExchangeRate toExchangeRate() {
    return ExchangeRate(baseCode: baseCode ?? '',
        conversionRates: conversionRates!.toJson(),
    );
  }
}