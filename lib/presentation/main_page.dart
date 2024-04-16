import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    Future.microtask(() {
      final viewModel = context.read<ExchangeViewModel>();
      viewModel.onSearch('USD');
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();
    final state = viewModel.state;

    //String inputValue = '';
    TextEditingController myController1 = TextEditingController();
    TextEditingController myController2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('환율계산기'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButton(
                    value: viewModel.standarddrp,
                    items: state.exchangeRate.conversionRates.keys
                        .map<DropdownMenuItem<String>>(
                      (e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      viewModel.changtext(value!);
                    },
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: myController1 ,
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: DropdownButton(
                    value: viewModel.compare,
                    items: state.exchangeRate.conversionRates.keys
                        .map<DropdownMenuItem<String>>(
                          (e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      viewModel.changtext(value!);
                    },
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: myController2 ,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
