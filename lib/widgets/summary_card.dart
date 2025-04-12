import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const SummaryCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.indigo),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 14)),
            Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
