import 'package:flutter/material.dart';
import 'package:finance/widgets/card_widget.dart';
import 'package:finance/widgets/finance_section_widget.dart';
import 'package:finance/widgets/currency_section_widget.dart';
import 'package:finance/datas/card_data.dart';

class DashboardScreen extends StatelessWidget {

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
                itemCount: CardData.carts.length,
                itemBuilder: (context, index) {
                  return CardWidget(card: CardData.carts[index],
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

