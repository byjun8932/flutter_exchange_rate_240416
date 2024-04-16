import 'package:flutter/material.dart';
import 'package:flutter_exchange_rate_240416/presentation/search_state.dart';

import '../data/repository/exchange_rate_repository.dart';

class ExchangeViewModel with ChangeNotifier {
  final ExchangesRepository _exchangesRepository;

  ExchangeViewModel({required ExchangesRepository exchangesRepository})
      : _exchangesRepository = exchangesRepository;

  SearchState _state = const SearchState();
  SearchState get state => _state;

  void onSearch(String standard) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      exchangeRate: await _exchangesRepository.getExchanges(standard),
      isLoading: false,
    );
    notifyListeners();
  }
}
