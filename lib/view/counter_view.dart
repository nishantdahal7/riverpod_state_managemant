import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberProvider = StateProvider<int>((ref) => 100);

final nameProvider = Provider<String>((ref) => "Hello World!!");

//Read a provider
//ref.read(numberProvider)
//ref.read(nameProvider)

//pachi kei change garnu cha vane StateProvider use garne.
//J cha tei dekhaune vaye Provider use garne.
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
              ref.watch(numberProvider).toString(),
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
        onPressed: () => {
          //Change
          ref.read(numberProvider.notifier).state += 2
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
