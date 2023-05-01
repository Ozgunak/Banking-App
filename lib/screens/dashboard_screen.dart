import 'package:flutter/material.dart';
import 'package:finance/widgets/card_widget.dart';
import 'package:finance/widgets/finance_section_widget.dart';
import 'package:finance/widgets/currency_section_widget.dart';
import 'package:finance/data/card_data.dart';
import 'package:finance/screens/transfer_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banking'),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransferScreen()),
              );
            },
            icon: const Icon(Icons.monetization_on),
            label: const Text('Transfer'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CardData.carts.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    card: CardData.carts[index],
                  );
                },
              ),
            ),
            FinanceSectionWidget(),
            CurrencySectionWidget(),
          ],
        ),
      ),
    );
  }
}
