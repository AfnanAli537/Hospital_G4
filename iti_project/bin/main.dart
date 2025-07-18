import 'dart:io';

import 'doctor.dart';
import 'nurse.dart';
import 'patiant.dart';
import 'hospital.dart';

void main() {
  Hospital hospital = Hospital("Cairo Hospital");

  while (true) {
    print("\n===== Hospital System Menu =====");
    print("1. Add Doctor");
    print("2. Add Nurse");
    print("3. Add Patient");
    print("4. Show All Staff");
    print("5. Show Patients");
    print("6. Show Staff Count");
    print("7. Exit");

    stdout.write("Choose an option: ");
    String? input = stdin.readLineSync();

    switch (input) {
      case "1":
        stdout.write("Doctor Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Age: ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("Gender: ");
        String gender = stdin.readLineSync()!;
        stdout.write("Specialization: ");
        String specialization = stdin.readLineSync()!;

        Doctor doctor = Doctor(
          name: name,
          age: age,
          gender: gender,
          specialization: specialization,
        );

        hospital.addDoctor(doctor);
        print("Doctor added successfully.");
        break;

      case "2":
        stdout.write("Nurse Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Age: ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("Gender: ");
        String gender = stdin.readLineSync()!;
        stdout.write("Shift: ");
        String shift = stdin.readLineSync()!;

        Nurse nurse = Nurse(
          name: name,
          age: age,
          gender: gender,
          shift: shift,
        );

        hospital.addNurse(nurse);
        print("Nurse added successfully.");
        break;

      case "3":
        if (hospital.doctors.isEmpty || hospital.nurses.isEmpty) {
          print("You must add at least one doctor and one nurse before adding a patient.");
          break;
        }

        stdout.write("Patient Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Age: ");
        int age = int.parse(stdin.readLineSync()!);
        stdout.write("Gender: ");
        String gender = stdin.readLineSync()!;
        stdout.write("Illness: ");
        String illness = stdin.readLineSync()!;

        Patient patient = Patient(
          name: name,
          age: age,
          gender: gender,
          illness: illness,
          treatedBy: hospital.doctors.first,
          caredBy: hospital.nurses.first,
        );

        hospital.addPatient(patient);
        print("Patient added successfully.");
        break;

      case "4":
        hospital.showAllStaff();
        break;

      case "5":
        hospital.showPatients();
        break;

      case "6":
        hospital.staffCount();
        break;

      case "7":
        print("Goodbye!");
        return;

      default:
        print("Invalid choice.");
    }
  }
}
