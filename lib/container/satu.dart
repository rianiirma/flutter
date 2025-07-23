import 'package:flutter/material.dart';
import 'package:learning/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 1',
      body: Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(10),
        color: const Color.fromARGB(255, 238, 187, 206),
        child: Center(child: Text("Hello Flutter")),
      ),
    );
  }
}
