import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final int balance;
  final String cardNumber;
  final Color color;

  CardWidget({required this.title, required this.balance, required this.cardNumber, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(8),
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Balance: \$ $balance',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                cardNumber,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
