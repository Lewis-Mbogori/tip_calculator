import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final double totalBill;
  final double perPersonBill;

  const Results(
      {required this.totalBill, required this.perPersonBill, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "The Total Bill is: KES ${totalBill.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text(
                "Per person Share is: KES ${perPersonBill.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}