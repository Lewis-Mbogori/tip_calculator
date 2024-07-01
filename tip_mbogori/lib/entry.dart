// A Form With Validation for 8 subjects
// Scaffold - Padding - Form - Column - TextFormField(8)


import 'package:flutter/material.dart';

import 'display.dart';
import 'results.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  final _key = GlobalKey<FormState>();
  final _math = TextEditingController();
  final _english = TextEditingController();
  final _kiswahili = TextEditingController();
  final _chemistry = TextEditingController();
  final _biology = TextEditingController();
  final _physics = TextEditingController();
  final _cre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsets.all(5),
      child: Form(
        key: _key,
        child: Column(
        children: [
          // TextFields Appear Here
          TextFormField(
            controller: _math, // storage point
            decoration: const InputDecoration(
              labelText: "Mathematics"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _english, // storage point
            decoration: const InputDecoration(
              labelText: "English"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _kiswahili, // storage point
            decoration: const InputDecoration(
              labelText: "Kiswahili"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _chemistry, // storage point
            decoration: const InputDecoration(
              labelText: "Chemistry"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _physics, // storage point
            decoration: const InputDecoration(
              labelText: "Physics"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _biology, // storage point
            decoration: const InputDecoration(
              labelText: "Biology"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
            TextFormField(
            controller: _cre, // storage point
            decoration: const InputDecoration(
              labelText: "CRE"
            ),
            // validation
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value!.isEmpty || int.tryParse (value)  == null){
                return'Value is not valid';
              }
              else{
                return null;
              }
            },

          ),
          // button
          OutlinedButton(onPressed:(){
            //check Validation
            var isValid = _key.currentState!.validate();
            if(isValid ){
              // Submit / Proceed
              // double - math result
              Map<String, int> results = {
                'Maths' : int.parse(_math.text),
                'English' : int.parse(_english.text),
                'Kiswahili' : int.parse(_kiswahili.text),
                'Chemistry' : int.parse(_chemistry.text),
                'Biology' : int.parse(_biology.text),
                'Physics' : int.parse(_physics.text),
                'CRE' : int.parse(_cre.text)

              };
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Resultsmarks( results: results,),
              ),
            );


            }
            else{
              return;
            }

          }, child: const Text('Grade'))
        ],
      )),),
    );
  }
}