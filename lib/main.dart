import 'package:flutter/material.dart';
import 'package:learning/container/dua.dart';
import 'package:learning/container/satu.dart';
import 'package:learning/container/tiga.dart';
import 'package:learning/list_view/contoh_dua.dart';
import 'package:learning/list_view/contoh_empat.dart';
import 'package:learning/list_view/contoh_satu.dart';
import 'package:learning/list_view/contoh_tiga.dart';
import 'package:learning/list_view/wisata_screen.dart';
import 'package:learning/row_column/Latihan_satu.dart';
import 'package:learning/row_column/row_column.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WisataScreen());
  }
}

class ContohWidget extends StatelessWidget {
  const ContohWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Flutter',
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
