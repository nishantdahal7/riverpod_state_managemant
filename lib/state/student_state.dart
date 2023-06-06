import 'package:riverpod_state_managemant/model/student.dart';

// kiran rana 1990-12-12 w43 234 23 123 sdfasd 234 234
// kiran rana 1990-12-12 w43 234 23 1232 sdfasd 234 234

class StudentState {
  bool isLoading;
  List<Student> students;

  StudentState({
    required this.isLoading,
    required this.students,
  });
  //initial State
  StudentState.initialState()
      : this(
          isLoading: false,
          students: [],
        );

  //CopyWith
  StudentState copyWith({
    bool? isLoading,
    List<Student>? students,
  }) {
    return StudentState(
      isLoading: isLoading ?? this.isLoading,
      students: students ?? this.students,
    );
  }
}
