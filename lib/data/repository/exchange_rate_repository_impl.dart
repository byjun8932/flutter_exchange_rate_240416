abstract interface class SubwayRepository {
  Future<List<Subway>> getSubways(String query);
}