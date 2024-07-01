import 'package:flutter/material.dart';
import 'package:tip_mbogori/results.dart';

class Input extends StatefulWidget {
   const Input({super.key});


  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {

  var _billcontroller = TextEditingController();
  var _tipcontroller = TextEditingController();
  var _nopersoncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
            controller: _billcontroller,
            decoration: const InputDecoration(
            labelText: 'Enter Your Total Bill',
            border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
            controller: _tipcontroller,
            decoration: const InputDecoration(
            labelText: 'Enter The Tip Percentage',
            border: OutlineInputBorder(),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
            controller: _nopersoncontroller,
            decoration: const InputDecoration(
            labelText: 'Enter The Number Of People',
            border: OutlineInputBorder(),
              ),
            ),
          ),
            ElevatedButton(
            onPressed: () {
              final double bill =
                double.tryParse(_billcontroller.text) ?? 0.0;
                final double tip =
                double.tryParse(_tipcontroller.text) ?? 0.0;
                final int people = int.tryParse(_nopersoncontroller.text) ?? 1;
                final double totalBill = total(bill, tip);
                final double perPersonBill =
                perpersonShare(totalBill, people);
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Results(
                totalBill: totalBill,
                perPersonBill: perPersonBill,
                ),
              ),
            );
            },
            child: const Text("Calculate"),
            ),
            ],
          ),
        ),
      );
  
  }

  double total(double bill, double tip) {
    return bill + (bill * tip / 100);
  }

  double perpersonShare(double totalBill, int noPerson) {
    return totalBill / noPerson;
  }
    
  }
        


