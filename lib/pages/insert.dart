import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wakevoice/insert/presentation/insert_screen.dart';

@RoutePage()
class InsertPage extends StatelessWidget {
  const InsertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: Icon(Icons.save),
        tooltip: 'Salva il form',
      ),
      body: const SafeArea(
        child: InsertScreen(),
      ),
    );
  }
}
