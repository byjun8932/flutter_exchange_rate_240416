import '../model/exchange_rate.dart';

abstract interface class ExchangesRepository {
  Future<ExchangeRate> getExchanges(String standard);
}