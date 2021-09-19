import 'package:flutter/material.dart';

class PaginageScreen extends StatelessWidget {
  const PaginageScreen({
    Key? key,
    required this.title,
    required this.columns,
    required this.rows,
  }) : super(key: key);

  final String title;
  final List<DataColumn> columns;
  final List<DataRow> rows;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
            color: Colors.white54,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      this.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  )),
              Card(
                elevation: 8.0,
                child: Container(
                  width: double.infinity,
                  child: DataTable(
                    columns: this.columns,
                    // <DataColumn>[
                    //   DataColumn(
                    //     numeric: true,
                    //     label: Text(
                    //       'No',
                    //       style: TextStyle(fontStyle: FontStyle.italic),
                    //     ),
                    //   ),
                    //   DataColumn(
                    //     label: Expanded(
                    //       flex: 2,
                    //       child: Text(
                    //         'ID',
                    //         style: TextStyle(fontStyle: FontStyle.italic),
                    //       ),
                    //     ),
                    //   ),
                    //   DataColumn(
                    //     label: Expanded(
                    //       flex: 4,
                    //       child: Text(
                    //         'Hotel Name',
                    //         style: TextStyle(fontStyle: FontStyle.italic),
                    //       ),
                    //     ),
                    //   ),
                    //   DataColumn(
                    //     label: Expanded(
                    //       flex: 1,
                    //       child: Text(
                    //         'Enable',
                    //         style: TextStyle(fontStyle: FontStyle.italic),
                    //       ),
                    //     ),
                    //   ),
                    //   DataColumn(
                    //     numeric: true,
                    //     label: Expanded(
                    //       flex: 2,
                    //       child: Text(
                    //         '-',
                    //         style: TextStyle(fontStyle: FontStyle.italic),
                    //       ),
                    //     ),
                    //   ),
                    // ],
                    rows: this.rows,
                    // <DataRow>[
                    //   DataRow(
                    //     cells: <DataCell>[
                    //       // DataCell(Container(child: Text('1'))),
                    //       // DataCell(Container(
                    //       //     width: 20, //SET width
                    //       //     child: Text('text'))),

                    //       DataCell(
                    //         Container(
                    //           // width: 40,
                    //           // color: Colors.red,
                    //           child: Text(
                    //             '1',
                    //             style: TextStyle(fontStyle: FontStyle.italic),
                    //           ),
                    //         ),
                    //       ),
                    //       DataCell(Text('DPEKD')),
                    //       DataCell(Text('Sarah')),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'Enable / Disable',
                    //             icon: Icon(Icons.check_box),
                    //             onPressed: () {})
                    //       ])),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'View Detail',
                    //             icon: Icon(Icons.description),
                    //             onPressed: () {}),
                    //         IconButton(
                    //             tooltip: 'Delete',
                    //             icon: Icon(Icons.delete),
                    //             onPressed: () {}),
                    //       ]))
                    //     ],
                    //   ),
                    //   DataRow(
                    //     cells: <DataCell>[
                    //       DataCell(
                    //         Container(
                    //           // width: 40,
                    //           // color: Colors.red,
                    //           child: Text(
                    //             '2',
                    //             style: TextStyle(fontStyle: FontStyle.italic),
                    //           ),
                    //         ),
                    //       ),
                    //       DataCell(Text('ODJKE')),
                    //       DataCell(Text('Janine')),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'Enable / Disable',
                    //             icon: Icon(Icons.check_box_outline_blank),
                    //             onPressed: () {})
                    //       ])),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'View Detail',
                    //             icon: Icon(Icons.description),
                    //             onPressed: () {}),
                    //         IconButton(
                    //             tooltip: 'Delete',
                    //             icon: Icon(Icons.delete),
                    //             onPressed: () {}),
                    //       ]))
                    //     ],
                    //   ),
                    //   DataRow(
                    //     cells: <DataCell>[
                    //       DataCell(
                    //         Container(
                    //           // width: 40,
                    //           //color: Colors.red,
                    //           child: Text(
                    //             '3',
                    //             style: TextStyle(fontStyle: FontStyle.italic),
                    //           ),
                    //         ),
                    //       ),
                    //       DataCell(Text('WKDMP')),
                    //       DataCell(Text('William')),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'Enable / Disable',
                    //             icon: Icon(Icons.check_box_outline_blank),
                    //             onPressed: () {})
                    //       ])),
                    //       DataCell(Row(children: [
                    //         IconButton(
                    //             tooltip: 'View Detail',
                    //             icon: Icon(Icons.description),
                    //             onPressed: () {}),
                    //         IconButton(
                    //             tooltip: 'Delete',
                    //             icon: Icon(Icons.delete),
                    //             onPressed: () {}),
                    //       ]))
                    //     ],
                    //   ),
                    // ],
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size(10, 10),
              ),
            ])));
  }
}
