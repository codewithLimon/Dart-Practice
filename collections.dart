import 'dart:collection';
import 'dart:io';

class Student {
  int id;
  String name;
  String address;
  String phone;
  double marks;

  Student(this.id, this.name, this.address, this.phone, this.marks);

  @override
  String toString() {
    return "\nid: $id,\nname: $name, \naddress: $address, \nphone: $phone, \nmarks: $marks";
  }
}

void main() async {
  Map<int, Student> studentsDatabase = {};

  print('How many students?');
  int length = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < length; i++) {
    int iteration = i + 1;
    print("\nStudent $iteration:\n");

    print("Id: ");
    int id = int.parse(stdin.readLineSync()!);

    print("Name:");
    String name = stdin.readLineSync()!;

    print("Address: ");
    String address = stdin.readLineSync()!;

    print("Phone: ");
    String phone = stdin.readLineSync()!;

    print("Marks: ");
    double marks = double.parse(stdin.readLineSync()!);

    studentsDatabase[id] = Student(id, name, address, phone, marks);
  }

  while (true) {
    print("Enter student ID to view student details (or 'quit' to exit): ");
    String input = stdin.readLineSync()!;

    if (input == 'quit') {
      break; // Terminate the program
    }

    int newID = int.parse(input);

    studentsDatabase.forEach((key, value) {
      if (key == newID) {
        print('Student data for $newID: ${value.toString()}');
      }
    });
  }

  print('Program terminated.');
}
