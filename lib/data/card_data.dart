import 'package:finance/models/card_model.dart';

class CardData {
  static List<CardModel> carts = [
    CardModel(title: 'Card 1', balance: 1000, cardNumber: '**** **** **** 1234', color: 'blue'),
    CardModel(title: 'Card 2', balance: 2000, cardNumber: '**** **** **** 5678', color: 'red'),
    CardModel(title: 'Card 3', balance: 3000, cardNumber: '**** **** **** 9012', color: 'green'),
  ];
}
