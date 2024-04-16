import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'exchange_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  void initState() {
    super.initState();
    Future.microtask((){
      final viewModel = context.read<ExchangeViewModel>();
      viewModel.onSearch('USD');
    });

  }
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();
    final state = viewModel.state;

    return  Scaffold(
      appBar: AppBar(
        title: Text('환율계산기'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
               Text(state.exchangeRate.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
