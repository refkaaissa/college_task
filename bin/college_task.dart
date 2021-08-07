//ADD PERSON CLASS 
class Person{
  String id;
  String name;
  String age;
  String address;

  Person(
    this.id,
    this.name,
    this.age,
    this.address,
  );

}


enum Evaluation {Fail, Success}
//ADD STUDENT CLASS
class Student extends Person {

  String email,phone;
  Evaluation eval;
  Map <String,double> subjects ={
    'Mathematic' : 0,
    'Science' : 0,
    'English' : 0,
    'Geography' : 0,
    'Information Technology' : 0,
  };

  Student(
    String id,
    String name,
    String age,
    String address,
    this.email,
    this.phone,
    this.eval,
   
  ) :  super(id,name,age,address);
 
  //Fuction ADD Subjects
  void AddSubject(String name, double grade ){
   
    subjects.addAll({name : grade});
  }

  //Function Student DATA

 void studentData(){
    print('studentid: $id ,student Name : $name,  Student Age : $age ,Student Address : $address, student email: $email,student phone :$phone ');
  }
}


class Students{
  final List <Student>  _students = [];

  void addStudent({
    required String id,
    required String name,
    required String age,
    required String address,
    required String email,
    required String phone,
    required Evaluation eval,

  }){
    _students.add(Student(
      id, 
      name, 
      age, 
      address, 
      email, 
      phone, 
      eval,
      ));  
  }

  void removeStudent(String id){
    _students.removeWhere((element) => element.id == id);
  }


  void PrintStudentData(String id){
    var student;
    // 
    //student.studentData();
    
      if(student == 0 ){
           _students.firstWhere((element) => element.id == id);
      }else{
        _students.forEach((element) {
          element.studentData();
        });
      }
        
  }


  void updateSubject(String id,String subjects, double grade){
    _students.forEach((element) {
      element.studentData();
    });
  }

  void calculateStudentGrade(String id){
    var student = _students.firstWhere((element) => element.id == id);
    student.studentData(); 
    
  }
}