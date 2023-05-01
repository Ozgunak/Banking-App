import 'package:flutter/material.dart';
import 'package:finance/widgets/card_widget.dart';
import 'package:finance/widgets/finance_section_widget.dart';
import 'package:finance/widgets/currency_section_widget.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'Card 1',
      'balance': 1000,
      'cardNumber': '**** **** **** 1234',
      'color': Colors.blue,
    },
    {
      'title': 'Card 2',
      'balance': 2000,
      'cardNumber': '**** **** **** 5678',
      'color': Colors.red,
    },
    {
      'title': 'Card 3',
      'balance': 3000,
      'cardNumber': '**** **** **** 9012',
      'color': Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    title: cards[index]['title'],
                    balance: cards[index]['balance'],
                    cardNumber: cards[index]['cardNumber'],
                    color: cards[index]['color'],
                  );
                },
              ),
            ),
            FinanceSectionWidget(),
            CurrencySectionWidget(),          ],
        ),
      ),
    );
  }
}

