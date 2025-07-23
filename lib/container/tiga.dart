import 'package:flutter/material.dart';
import 'package:learning/container/dua.dart';
import 'package:learning/container/satu.dart';
import 'package:learning/main_layout.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'container 3',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 169, 196, 242),
              const Color.fromARGB(255, 177, 231, 225),
              const Color.fromARGB(255, 233, 150, 223),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 169, 196, 242),
                const Color.fromARGB(255, 177, 231, 225),
                const Color.fromARGB(255, 233, 150, 223),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
          ),
          child: Center(
            child: ElevatedButton(
              child: Text('Pindah Ke Container 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerDua()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
