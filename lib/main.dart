import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      home: Scaffold(
        appBar: AppBar(
          title:Text('Ponno'),
        ),
        body:const MyTable(),
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
        dataRowHeight: 50,
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Price')),
          DataColumn(label: Text('Picture')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('23')),
            DataCell(Text('IPhone 14')),
            DataCell(Text('999\$')),
            DataCell(Image.asset('images/iphone.jpeg')),
          ],
          ),
          DataRow(cells: [
            DataCell(Text('23')),
            DataCell(Text('IPhone 14')),
            DataCell(Text('999\$')),
            DataCell(Image.asset('images/iphone.jpeg')),
          ]),
        ]);
  }
}