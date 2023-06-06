import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_managemant/logic/arithmetic.dart';

final resultProvider = StateProvider<int>((ref) => 0);

final firstProvider = StateProvider<int>((ref) => 0);
final secondProvider = StateProvider<int>((ref) => 0);

class AddView extends ConsumerWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(),
            onChanged: (value) =>
                ref.read(firstProvider.notifier).state = int.parse(value),
          ),
          TextField(
            decoration: const InputDecoration(),
            onChanged: (value) =>
                ref.read(secondProvider.notifier).state = int.parse(value),
          ),
          ElevatedButton(
              onPressed: () {
                (ref
                    .read(additionProvider)
                    .add(ref.read(firstProvider), ref.read(secondProvider)));

                // print(ref.read(firstProvider) + ref.read(secondProvider));
              },
              child: const Text('Add')),
          const Text(
            'Result:  ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )),
    );
  }
}



// class AddView extends ConsumerStatefulWidget {
//   const AddView({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _AddViewState();
// }

// class _AddViewState extends ConsumerState<AddView> {
//   var gap = const SizedBox(height: 12);
//   final firstController = TextEditingController(text: '1');
//   final secondController = TextEditingController(text: '2');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           gap,
//           TextFormField(
//             controller: firstController,
//             keyboardType: TextInputType.number,
//             decoration: const InputDecoration(
//               labelText: 'Enter first Number',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//           gap,
//           TextFormField(
//             controller: secondController,
//             keyboardType: TextInputType.number,
//             decoration: const InputDecoration(
//               labelText: 'Enter second Number',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//           gap,
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(
//               onPressed: () {
//                 print(ref.read(additionProvider).add(a, b))
//               },
//               child: const Text('ADD'),
//             ),
//           ),
//           gap,
//           const Text(
//             'Result: ',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// class AddView extends StatefulWidget {
//   const AddView({super.key});

//   @override
//   State<AddView> createState() => _AddViewState();
// }

// class _AddViewState extends State<AddView> {
//   var gap = const SizedBox(height: 12);
//   final firstController = TextEditingController(text: '0');
//   final secondController = TextEditingController(text: '0');
//   int result = 0;
//   Arithmetic arithmetic = Arithmetic();
//   void add() {
//     setState(() {
//       result = arithmetic.add(
//           int.parse(firstController.text), int.parse(secondController.text));
//     });
//   }

//   final meroKey = GlobalKey<FormState>(); //to store data while in use.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add'),
//         centerTitle: true,
//       ),
      // body: Form(
      //   key = meroKey,
      //   child = Column(
      //     children: [
      //       gap,
      //       TextFormField(
      //         controller: firstController,
      //         keyboardType: TextInputType.number,
      //         decoration: const InputDecoration(
      //           labelText: 'Enter first Number',
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(10),
      //             ),
      //           ),
      //         ),
      //         validator: (value) {
      //           if (value == null || value.isEmpty) {
      //             return 'Please enter some text.';
      //           }
      //           return null;
      //         },
      //       ),
      //       gap,
      //       TextFormField(
      //         controller: secondController,
      //         keyboardType: TextInputType.number,
      //         decoration: const InputDecoration(
      //           labelText: 'Enter second Number',
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.all(
      //               Radius.circular(10),
      //             ),
      //           ),
      //         ),
      //         validator: (value) {
      //           if (value == null || value.isEmpty) {
      //             return 'Please enter second Number';
      //           }
      //           return null;
      //         },
      //       ),
      //       const SizedBox(height: 12),
      //       SizedBox(
      //         width: double.infinity,
      //         child: ElevatedButton(
      //           onPressed: () {
      //             add();
      //           },
      //           child: const Text('ADD'),
      //         ),
      //       ),
      //       gap,
      //       Text(
      //         'Result: $result',
      //         style: const TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
//     );
//   }
// }
