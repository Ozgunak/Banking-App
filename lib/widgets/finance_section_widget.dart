import 'package:flutter/material.dart';

class FinanceSectionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Finance',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('My Spendings'),
            subtitle: Text('View your recent spendings'),
            leading: Icon(Icons.attach_money),
            onTap: () {
              // Implement navigation to the Spendings screen
            },
          ),
          ListTile(
            title: Text('Analysis'),
            subtitle: Text('Analyze your financial status'),
            leading: Icon(Icons.pie_chart),
            onTap: () {
              // Implement navigation to the Analysis screen
            },
          ),
          ListTile(
            title: Text('Bonuses'),
            subtitle: Text('Check your bonus points'),
            leading: Icon(Icons.star),
            onTap: () {
              // Implement navigation to the Bonuses screen
            },
          ),
        ],
      ),
    );
  }
}
