import 'package:flutter/material.dart';
import 'package:flutter_exchange_rate_240416/presentation/exchange_view_model.dart';
import 'package:flutter_exchange_rate_240416/presentation/main_page.dart';
import 'package:provider/provider.dart';

import 'data/data_source/exchange_rate_source.dart';
import 'data/repository/exchange_rate_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        // cnp
        create: (_) => ExchangeViewModel(
            exchangesRepository: ExchangesRepositoryImpl(
          exchangeRateDataSource: ExchangeRateDataSource(),
        )),
        child: const MainPage(),
      ),
    );
  }
}
