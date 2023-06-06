import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_managemant/model/student.dart';
import 'package:riverpod_state_managemant/view-model/student_viewmodel.dart';

class StudentView extends ConsumerWidget {
  StudentView({super.key});
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final dobController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Students'),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  label: Text("First Name"),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  label: Text("Last Name"),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: dobController,
                decoration: const InputDecoration(
                  label: Text("Date of Birth"),
                ),
                onTap: () async {
                  DateTime? dob = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (dob != null) {
                    dobController.text = dob.toString().substring(0, 10);
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Student student = Student(
                    fname: fnameController.text.trim(),
                    lname: lnameController.text.trim(),
                    dob: dobController.text.trim(),
                  );

                  //View model lai student deu
                  ref
                      .read(studentViewModelProvider.notifier)
                      .addStudent(student);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Student Added Successsfully'),
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ));
  }
}
