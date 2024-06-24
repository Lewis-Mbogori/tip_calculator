import 'package:flutter/material.dart';

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
          ElevatedButton(onPressed: () {
            double Bill=double.parse(_billcontroller.text);
            double Tip=double.parse(_tipcontroller.text);
            double nopersoncontroller=double.parse(_nopersoncontroller.text);

          }, child: const Text("Calculate")),
      ],
      )
      ),
    );
  }
        


}