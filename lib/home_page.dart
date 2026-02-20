import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final angka = context.watch<CounterModel>().angka;
    return Consumer<CounterModel>(
      builder: (context, counterModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
        );
      },
    );
  }
}
