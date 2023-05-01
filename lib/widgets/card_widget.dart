import 'package:flutter/material.dart';
import 'package:finance/models/card_model.dart';

class CardWidget extends StatelessWidget {
  final CardModel card;

  CardWidget({required this.card});

  @override
  Widget build(BuildContext context) {
    Color cardColor = Colors.blue;

    switch (card.color) {
      case 'blue':
        cardColor = Color(0xFFD0A018);
        break;
      case 'red':
        cardColor = Color(0xFFD32F2F);
        break;
      case 'green':
        cardColor = Color(0xFF388E3C);
        break;
      default:
        cardColor = Color(0xFF1E88E5);
    }

    return Container(
      width: 250,
      margin: EdgeInsets.all(8),
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                card.title,
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Balance: \$ ${card.balance}',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                card.cardNumber,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
