class Person {
  String name;
  String address;
  Person({required this.name, required this.address});
  @override
  String toString() {
    return 'Person(name: $name, address: $address)';
  }
}

// Student class extends Person
class Student extends Person {
  int numCourses;
  List<String> courses = [];
  List<int> grades = [];
  Student({required super.name, required super.address, this.numCourses = 0});

  @override
  String toString() {
    return 'Student(name: $name, address: $address, numCourses: $numCourses, courses: $courses, grades: $grades)';
  }

  //method to add a course and its grade
  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  //method to print all courses and grades
  void printGrades() {
    for (int i = 0; i < numCourses; i++) {
      print('Course: ${courses[i]}, Grade: ${grades[i]}');
    }
  }

  //method to calculate average grade
  double getAverageGrade() {
    if (grades.isEmpty) return 0.0;
    int total = grades.reduce((a, b) => a + b);
    return total / grades.length;
  }
}

//Teacher class extends Person
class Teacher extends Person {
  int numCourses;
  List<String> course = [];

  //constructor
  Teacher({required super.name, required super.address, this.numCourses = 0});

  @override
  String toString() {
    return 'Teacher(name: $name, address: $address, numCourses: $numCourses, courses: $course)';
  }

  //method to add a course
  bool addCourse(String course) {
    if (this.course.contains(course)) {
      return false; // Course already exists
    }
    this.course.add(course);
    numCourses++;
    return true; // Course added successfully
  }

  //method to remove a course
  bool removeCourse(String course) {
    if (!this.course.contains(course)) {
      return false; // Course does not exist
    }
    this.course.remove(course);
    numCourses--;
    return true; // Course removed successfully
  }
}

void main() {
  // Example usage
  Student student = Student(name: 'Alice', address: '123 Main St');
  student.addCourseGrade('Math', 90);
  student.addCourseGrade('Science', 85);
  print(student);
  student.printGrades();
  print('Average Grade: ${student.getAverageGrade()}');

  Teacher teacher = Teacher(name: 'Mr. Smith', address: '456 Elm St');
  teacher.addCourse('Math');
  teacher.addCourse('History');
  print(teacher);
  teacher.removeCourse('Math');
  print(teacher);
}
