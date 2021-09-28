import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:comein_web/component/paginate_screen.dart';
import 'package:flutter/material.dart';

class HotelStaffList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataColumn> columns = initHeader();
    List<DataRow> rows = initDatas(context);
    return PaginageScreen(title: "Hotel Staffs", columns: columns, rows: rows);
  }

  List<DataColumn> initHeader() {
    return <DataColumn>[
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
            'Staff ID',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      DataColumn(
        label: Expanded(
          flex: 4,
          child: Text(
            'Staff Name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ),
      DataColumn(
        label: Expanded(
          flex: 4,
          child: Text(
            'Email',
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
    ];
  }

  List<DataRow> initDatas(BuildContext context) {
    return <DataRow>[
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
          DataCell(Text('sarah@gmail.com')),
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
                tooltip: 'Reset Password',
                icon: Icon(Icons.email_rounded),
                onPressed: () {
                  AwesomeDialog(
                    width: 400,
                    context: context,
                    dialogType: DialogType.QUESTION,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Reset Password',
                    desc: 'Confirm to Reset Password.',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {
                      //Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
                    },
                  ).show();
                }),
            IconButton(
                tooltip: 'Delete', icon: Icon(Icons.delete), onPressed: () {}),
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
          DataCell(Text('janine_j@hotmail.com')),
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
                tooltip: 'Reset Password',
                icon: Icon(Icons.email_rounded),
                onPressed: () {}),
            IconButton(
                tooltip: 'Delete', icon: Icon(Icons.delete), onPressed: () {}),
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
          DataCell(Text('www_william@gmail.com')),
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
                tooltip: 'Reset Password',
                icon: Icon(Icons.email_rounded),
                onPressed: () {}),
            IconButton(
                tooltip: 'Delete', icon: Icon(Icons.delete), onPressed: () {}),
          ]))
        ],
      ),
    ];
  }
}
