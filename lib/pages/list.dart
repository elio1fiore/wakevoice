import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Ciao"),
            Text("Ciao"),
            Text("Ciao"),
            Text("Ciao"),
            Text("Ciao"),
            Text("Ciao"),
            Text("Ciao"),
          ],
        ),
      ),
    );
  }
}
