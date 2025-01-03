//-------------- 1st Ostad Assignment ---------------

// creating abstract class named Role.
abstract class Role{
  // this will be our abstract method.
  void displayRole();
}

// creating a class named Person.
class Person{
  // attributes/ properties of Person Class:
  String ? name;
  int ? age;
  String ? address;
  // Creating Constructor of Person class.
  Person(this.name,this.age,this.address);

  // Implementing the abstract method here.
  void displayRole(){

  }
}

// Creating a class Student that extends person.
class Student extends Person{
  // attributes / properties of Student class.
  String ? studentID;
  String ? grade;
  List <int> courseScores = [];

  // providing a constructor to initializing Person and Student class's attributes.
  Student(String name, int age,String address,this.studentID,this.grade,this.courseScores):super(name, age,address);

  // Overriding  the displayRole method here.
  @override
  void displayRole(){
    print("Role: Studnet");
    print ("Name: $name");
    print ("Age: $age");
    print ("Address: $address");
  }
  // creating a calculator to calculate average course scores.
  calculateAverageScores(){
    List <int> courseScores = [90,85,82];

    var sum = 0 ;
    courseScores.forEach((num){ sum = sum + num; });

    double average = (sum / courseScores.length);

    print(average.toStringAsFixed(1));

  }
}
// Creating a class called Teacher that extends Person Class.
class Teacher extends Person{
  // attributes/properties of Teacher class.
  String ? teacherID;
  List <String> courseTaught = [];

  // Providing a constructor to initializing Person and Teacher class's attributes.
  Teacher(String name,int age, String address,this.teacherID,this.courseTaught):super(name,age,address);

  // Overriding the displayRole method here again.
  @override
  void displayRole(){
    print("");
    print("Role: Teacher");
    print ("Name: $name");
    print ("Age: $age");
    print ("Address: $address");
  }
  // creating a method to display CoursesTaught.
  displayCoursesTaught(){
    List <String> coursesTaught =["-Math","-English","-Bangla"];

    coursesTaught.forEach((courses){
      print (courses);
    });
  }
}

void main(){
  Student s = Student ("John Doe",20,"123 Main St","","",[90,85,82]);
  s.displayRole();
  s.calculateAverageScores();

  Teacher t = Teacher ("Mrs. Smith",35,"456 Oak St","",["-Math","-English","-Bangla"]);
  t.displayRole();
  t.displayCoursesTaught();
}
