import 'dart:convert';
import 'package:http/http.dart' as http;

import '../dto/exchange_dto.dart';

class ExchangeRateDataSource {
  final _baseUrl =
      'https://v6.exchangerate-api.com/v6/';

  Future<ExchangeDto> getExchangeResult(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl/latest/$query'));
    return ExchangeDto.fromJson(jsonDecode(response.body));
  }
}

/*void main() async {
  final test = ExchangeRateDataSource();
  final Test = await test.getSubwayResult('USD');
}*/
