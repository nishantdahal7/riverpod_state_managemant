import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberProvider = Provider<int>((ref) => 100);

final nameProvider = Provider<String>((ref) => "Hello World!!");

//Read a provider
//ref.read(numberProvider)
//ref.read(nameProvider)

//ProviderRef = Provider -> provider
//WidgetRef = Widget -> provider
class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.read(numberProvider).toString(),
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              ref.read(nameProvider),
              style: const TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
