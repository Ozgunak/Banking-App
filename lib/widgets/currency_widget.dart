import 'package:flutter/material.dart';

class CurrencyWidget extends StatelessWidget {
  final String currency;
  final double rate;

  CurrencyWidget({required this.currency, required this.rate});

  String _formatRate(double rate) {
    return rate.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]},');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            currency.substring(0, 1),
            style: TextStyle(color: Colors.white),
          ),
        ),
        title: Text(currency),
        trailing: Text(_formatRate(rate)),
      ),
    );
  }
}
