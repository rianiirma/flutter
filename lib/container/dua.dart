import 'package:flutter/material.dart';
import 'package:learning/container/satu.dart';
import 'package:learning/main_layout.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'container 2',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 34, 52, 83),
              const Color.fromARGB(255, 132, 208, 231),
              const Color.fromARGB(255, 205, 142, 235),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
        ),
        child: Center(
          child: ElevatedButton(
            child: Text('Pindah Ke Container 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerSatu()),
              );
            },
          ),
        ),
      ),
      
    );
  }
}
