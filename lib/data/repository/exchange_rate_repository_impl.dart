import 'package:flutter_exchange_rate_240416/data/mapper/exchange_mapper.dart';
import 'package:flutter_exchange_rate_240416/data/model/exchange_rate.dart';

import '../data_source/exchange_rate_source.dart';
import 'exchange_rate_repository.dart';

class ExchangesRepositoryImpl implements ExchangesRepository {
  final ExchangeRateDataSource _exchangeRateDataSource;

  const ExchangesRepositoryImpl({
    required ExchangeRateDataSource exchangeRateDataSource,
  }) : _exchangeRateDataSource = exchangeRateDataSource;

  @override
  Future<ExchangeRate> getExchanges(String standard) async {
    final dto = await _exchangeRateDataSource.getExchangeResult(standard);

    if (dto == null) {
      return ExchangeRate(
        baseCode: '',
        conversionRates: {},
      );
    }
    return dto.toExchangeRate();
  }
}

/*void main() async {
  ExchangesRepository exchangesRepository =
      ExchangesRepositoryImpl(exchangeRateDataSource: ExchangeRateDataSource());
  final test = await exchangesRepository.getExchanges('USD');
  print(test.toString());
}*/
