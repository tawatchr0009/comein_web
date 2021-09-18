import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:responsive_table/responsive_table.dart';
//import 'package:data_table_2/data_table_2.dart';
import 'package:data_tables/data_tables.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';
// import 'package:advanced_datatable/advanced_datatable.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<DatatableHeader> _headers = [
    //   DatatableHeader(
    //       text: "ID",
    //       value: "id",
    //       show: false,
    //       sortable: true,
    //       textAlign: TextAlign.right),
    //   DatatableHeader(
    //       text: "Name",
    //       value: "name",
    //       show: true,
    //       flex: 2,
    //       sortable: true,
    //       editable: true,
    //       textAlign: TextAlign.left),
    // ];
    // List<int> _perPages = [5, 10, 15, 100];
    // int _total = 100;
    // int _currentPerPage;
    // int _currentPage = 1;
    // Map<String, dynamic> _json = {'argA': 'hello', 'argB': 42};
    List<Employee> data = getEmployees();
    //  EmployeeDataSource ds = EmployeeDataSource(employees: data);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
            color: Colors.white54,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Text(
                      "Hotel > ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  )),

              // ResponsiveDatatable(
              //   headers: _headers,
              //   source: _generateData(),
              // ),
              // DataTable2(
              //     columnSpacing: 12,
              //     horizontalMargin: 12,
              //     minWidth: 600,
              //     columns: [
              //       DataColumn2(
              //         label: Text('Column A'),
              //         size: ColumnSize.L,
              //       ),
              //       DataColumn(
              //         label: Text('Column B'),
              //       ),
              //       DataColumn(
              //         label: Text('Column C'),
              //       ),
              //       DataColumn(
              //         label: Text('Column D'),
              //       ),
              //       DataColumn(
              //         label: Text('Column NUMBERS'),
              //         numeric: true,
              //       ),
              //     ],
              //     rows: List<DataRow>.generate(
              //         100,
              //         (index) => DataRow(cells: [
              //               DataCell(Text('A' * (10 - index % 10))),
              //               DataCell(Text('B' * (10 - (index + 5) % 10))),
              //               DataCell(Text('C' * (15 - (index + 5) % 10))),
              //               DataCell(Text('D' * (15 - (index + 10) % 10))),
              //               DataCell(Text(((index + 0.1) * 25.4).toString()))
              //             ]))),
              // SizedBox.fromSize(
              //   size: Size(10, 10),
              // ),
              Card(
                elevation: 8.0,
                child: Container(
                  width: double.infinity,
                  child: DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                        numeric: true,
                        label: Text(
                          'No',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          flex: 2,
                          child: Text(
                            'ID',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          flex: 4,
                          child: Text(
                            'Hotel Name',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          flex: 1,
                          child: Text(
                            'Enable',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      DataColumn(
                        numeric: true,
                        label: Expanded(
                          flex: 2,
                          child: Text(
                            '-',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          // DataCell(Container(child: Text('1'))),
                          // DataCell(Container(
                          //     width: 20, //SET width
                          //     child: Text('text'))),

                          DataCell(
                            Container(
                              // width: 40,
                              // color: Colors.red,
                              child: Text(
                                '1',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          DataCell(Text('DPEKD')),
                          DataCell(Text('Sarah')),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'Enable / Disable',
                                icon: Icon(Icons.check_box),
                                onPressed: () {})
                          ])),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'View Detail',
                                icon: Icon(Icons.description),
                                onPressed: () {}),
                            IconButton(
                                tooltip: 'Delete',
                                icon: Icon(Icons.delete),
                                onPressed: () {}),
                          ]))
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Container(
                              // width: 40,
                              // color: Colors.red,
                              child: Text(
                                '2',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          DataCell(Text('ODJKE')),
                          DataCell(Text('Janine')),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'Enable / Disable',
                                icon: Icon(Icons.check_box_outline_blank),
                                onPressed: () {})
                          ])),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'View Detail',
                                icon: Icon(Icons.description),
                                onPressed: () {}),
                            IconButton(
                                tooltip: 'Delete',
                                icon: Icon(Icons.delete),
                                onPressed: () {}),
                          ]))
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(
                            Container(
                              // width: 40,
                              //color: Colors.red,
                              child: Text(
                                '3',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          DataCell(Text('WKDMP')),
                          DataCell(Text('William')),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'Enable / Disable',
                                icon: Icon(Icons.check_box_outline_blank),
                                onPressed: () {})
                          ])),
                          DataCell(Row(children: [
                            IconButton(
                                tooltip: 'View Detail',
                                icon: Icon(Icons.description),
                                onPressed: () {}),
                            IconButton(
                                tooltip: 'Delete',
                                icon: Icon(Icons.delete),
                                onPressed: () {}),
                          ]))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size(10, 10),
              ),
              // Card(
              //   elevation: 8.0,
              //   child: SfDataGrid(
              //     source: ds,
              //     columnWidthMode: ColumnWidthMode.fill,
              //     columns: <GridColumn>[
              //       GridColumn(
              //           columnName: 'id',
              //           label: Container(
              //               padding: EdgeInsets.all(16.0),
              //               alignment: Alignment.centerRight,
              //               child: Text(
              //                 'ID',
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ))),
              //       GridColumn(
              //           columnName: 'name',
              //           label: Container(
              //               padding: EdgeInsets.all(16.0),
              //               alignment: Alignment.centerLeft,
              //               child: Text('Name'))),
              //       GridColumn(
              //           columnName: 'designation',
              //           width: 120,
              //           label: Container(
              //               padding: EdgeInsets.all(16.0),
              //               alignment: Alignment.centerLeft,
              //               child: Text('Designation'))),
              //       GridColumn(
              //           columnName: 'salary',
              //           label: Container(
              //               padding: EdgeInsets.all(16.0),
              //               alignment: Alignment.centerRight,
              //               child: Text('Salary'))),
              //     ],
              //   ),
              // ),
              // SizedBox.fromSize(
              //   size: Size(10, 10),
              // ),
            ])));
  }

  List<Map<String, dynamic>> _generateData({int n: 100}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = [];
    // var i = _source.length;
    var i = 1;
    print(i);
    for (var data in source) {
      temps.add({
        "id": i,
        "sku": "$i\000$i",
        "name": "Product Product Product Product $i",
        "category": "Category-$i",
        "price": "${i}0.00",
        "cost": "20.00",
        "margin": "${i}0.20",
        "in_stock": "${i}0",
        "alert": "5",
        "received": [20 + i, 150]
      });
      i++;
    }
    return temps;
  }
}

class Employee {
  Employee(this.id, this.name, this.designation, this.salary);
  final int id;
  final String name;
  final String designation;
  final int salary;
}

List<Employee> getEmployees() {
  return [
    Employee(10001, 'James', 'Project Lead', 20000),
    Employee(10002, 'Kathryn', 'Manager', 30000),
    Employee(10003, 'Lara', 'Developer', 15000),
    Employee(10004, 'Michael', 'Designer', 15000),
    Employee(10005, 'Martin', 'Developer', 15000),
    Employee(10006, 'Newberry', 'Developer', 15000),
    Employee(10007, 'Balnc', 'Developer', 15000),
    Employee(10008, 'Perry', 'Developer', 15000),
    Employee(10009, 'Gable', 'Developer', 15000),
    Employee(10010, 'Grimes', 'Developer', 15000)
  ];
}

// class EmployeeDataSource extends DataGridSource {
//   //final List<Employee>  _employees = employees;
//   EmployeeDataSource({required List<Employee> employees}) {
//     _employees = employees
//         .map<DataGridRow>((e) => DataGridRow(cells: [
//               DataGridCell<int>(columnName: 'id', value: e.id),
//               DataGridCell<String>(columnName: 'name', value: e.name),
//               DataGridCell<String>(
//                   columnName: 'designation', value: e.designation),
//               DataGridCell<int>(columnName: 'salary', value: e.salary),
//             ]))
//         .toList();
//   }

//   List<DataGridRow> _employees = [];

//   @override
//   List<DataGridRow> get rows => _employees;

//   @override
//   DataGridRowAdapter? buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((dataGridCell) {
//       return Container(
//         alignment: (dataGridCell.columnName == 'id' ||
//                 dataGridCell.columnName == 'salary')
//             ? Alignment.centerRight
//             : Alignment.centerLeft,
//         padding: EdgeInsets.all(16.0),
//         child: Text(dataGridCell.value.toString()),
//       );
//     }).toList());
//   }
// }

class RowData {
  final int index;
  final String value;
  RowData(this.index, this.value);
}

// class ExampleSource extends AdvancedDataTableSource<RowData> {
//   //Mockup for requesting data from some external source
//   Future<RemoteDataSourceDetails<RowData>> getNextPage(
//       NextPageRequest pageRequest) async {
//     await Future.delayed(Duration(seconds: 5));
//     return RemoteDataSourceDetails(
//       data.length,
//       data.skip(pageRequest.offset).take(pageRequest.pageSize).toList(),
//     );
//   }
// }
