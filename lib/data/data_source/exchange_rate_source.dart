class ExchangeRateDataSource {
  final _baseUrl = 'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5';

  Future<SubwayDto> getSubwayResult(String query) async {
    final response = await http.get(Uri.parse(
        '$_baseUrl/$query'));
    return SubwayDto.fromJson(jsonDecode(response.body));
  }
}