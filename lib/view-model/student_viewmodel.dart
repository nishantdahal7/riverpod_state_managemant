//Middleware
//this should have no return

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_managemant/model/student.dart';
import 'package:riverpod_state_managemant/state/student_state.dart';

//Provider
final studentViewModelProvider =
    StateNotifierProvider<StudentViewModel, StudentState>(
  (ref) => StudentViewModel(),
);

class StudentViewModel extends StateNotifier<StudentState> {
  StudentViewModel() : super(StudentState.initialState());

  //Add Student
  void addStudent(Student student) {
    state.copyWith(isLoading: true);
    //server ma dala hala
    state.students.add(student);
    state = state.copyWith(isLoading: false);
  }

  //Delete Student
}
