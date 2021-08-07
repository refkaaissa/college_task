import 'dart:io';

import 'college_task.dart';
void main(){
  var students = Students();

  loop:
  while (true) {
    print('1.Add Student');
    print('2.Remove Student');
    print('3.Add Subject');
    print('4.Print Students Data');
    print('5.Exit');
    print('6.Calculate Student Grade');

    var input = stdin.readLineSync();

    switch (input){
      case '5':
        break;
      case '4':
        print('Enter id');
        var input = stdin.readLineSync()!;
        students.PrintStudentData(input[0]);
        break;
      case '3':
        print('enter id, subject,grade');
        var input = stdin.readLineSync()!.split(',');
        students.updateSubject(input[0],input[1], double.parse(input[2]));
        break;
      case '2':
       print('Enter id');
       var input =stdin.readLineSync()!;
       students.removeStudent(input);
       break;

      case '1':
      print('Enter id, name, age, address, email,phone, Evaluation');
      var input = stdin.readLineSync()!.split(',');
      students.addStudent(
        id: input[0], 
        name: input[1], 
        age: input[2], 
        address: input[3], 
        email: input[4], 
        phone: input[5],
        eval: getEval(input[6]));
        break;
      case '6':
        print('Enter id');
        var input = stdin.readLineSync()!;
        students.calculateStudentGrade(input[0]);
        break; 
      default:
        print('Enter valid number');
    }
  }
}

Evaluation getEval (String eval){
  switch(eval) {
    case '<50':
      return Evaluation.Fail;
    default:
      return Evaluation.Success;
  }
}
