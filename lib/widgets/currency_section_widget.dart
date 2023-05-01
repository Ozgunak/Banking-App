import 'package:flutter/material.dart';
import 'package:finance/widgets/currency_widget.dart';
import 'dart:math';

class CurrencySectionWidget extends StatelessWidget {
  final _currencies = [
    'USD',
    'CAD',
    'EUR',
    'JPY',
    'GBP',
    'AUD',
    'CHF',
    'CNY',
    'SEK',
    'NZD',
  ];

  List<Widget> _generateCurrencyWidgets(int count) {
    final random = Random();
    return List.generate(
      count,
          (index) => CurrencyWidget(
        currency: _currencies[index],
        rate: random.nextDouble() * 10,
      ),
    );
  }

  void _showAllCurrencies(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        final allCurrencyWidgets = _generateCurrencyWidgets(_currencies.length);
        return ListView(children: allCurrencyWidgets);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currencyWidgets = _generateCurrencyWidgets(3);
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Currencies',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () => _showAllCurrencies(context),
                child: Text('Show All'),
              ),
            ],
          ),
          SizedBox(height: 16),
          ...currencyWidgets,
        ],
      ),
    );
  }
}
