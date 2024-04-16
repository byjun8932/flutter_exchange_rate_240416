import 'package:flutter/material.dart';
import 'package:flutter_exchange_rate_240416/presentation/search_state.dart';

import '../data/repository/exchange_rate_repository.dart';

class ExchangeViewModel with ChangeNotifier {
  final ExchangesRepository _exchangesRepository;

  ExchangeViewModel({required ExchangesRepository exchangesRepository})
      : _exchangesRepository = exchangesRepository;

  SearchState _state = const SearchState();
  SearchState get state => _state;

  String _standarddrp = 'USD';
  String get standarddrp => _standarddrp;


  String _compare = 'USD';
  String get compare => _compare;

  num number1 = 0;
  num number2 = 0;
  num calculateNum = 0;




  void changeNumber1 (String a){
    number1 = num.parse(a);
    notifyListeners();
  }

  void changeNumber2 (String a){
    number2 = num.parse(a);
    notifyListeners();
  }

  void calculate(){
    calculateNum = (1/number1 * num.parse(_state.exchangeRate.conversionRates[_standarddrp].toString()))/(1/number2 * num.parse(_state.exchangeRate.conversionRates[_compare].toString()));
    //print('11111111111111111111111111111$calculateNum');
    notifyListeners();
  }

  void onSearch(String standard) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      exchangeRate: await _exchangesRepository.getExchanges(standard),
      isLoading: false,
    );
    notifyListeners();
  }

  void changtext(String txt){
    _standarddrp = txt;
    notifyListeners();
  }

  void changtext2(String txt){
    _compare = txt;
    notifyListeners();
  }

}
