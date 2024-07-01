import 'package:flutter/material.dart';

class Resultsmarks extends StatefulWidget {
  final Map<String, int> results;
  const Resultsmarks({super.key, required this.results});

  @override
  State<Resultsmarks> createState() => _ResultsmarksState();
}

class _ResultsmarksState extends State<Resultsmarks> {
  @override
  Widget build(BuildContext context) {
    var marks = widget.results.values;
    int total = marks.reduce((sum, index)=> (sum + index));
    // average
    double avg = total/marks.length;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
      ),
      body: Column(
        children: [
          // Show results
          Text(widget.results.toString()),
          Text(widget.results.values.toString()),
          // Show Summary
          Table(
            border: TableBorder.all(width: 1, color: Colors.black),
            children: const [
              TableRow(children: [
                Text('Summary'),
                Text('#'),
              ]

              ),

               TableRow(children: [
                Text('Total'),
                Text('#'),
                
                
              ]

              ),
                TableRow(children: [
                Text('Average'),
                Text('#'),
                
                
              ]

              ),
                TableRow(children: [
                Text('Grade'),
                Text('#'),
                
                
              ]

              ),
            ],
          ),



        ],
      ),
    );
  }


}
class ResultsTable extends StatelessWidget {
 ResultsTable({super.key, required this.results});
  final Map<String, int>results;

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('Subject')),
       DataColumn(label: Text('Marks'))],
        rows: [DataRow(cells: [DataCell(Text('Maths')), DataCell(Text('Results'))])]);
  }
}