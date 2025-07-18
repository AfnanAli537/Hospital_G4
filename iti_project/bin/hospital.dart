import 'doctor.dart';
import 'nurse.dart';
import 'patiant.dart';

class Hospital {
  String name;
  List<Doctor> doctors = [];
  List<Nurse> nurses = [];
  List<Patient> patients = [];

  Hospital(this.name);

  void addDoctor(Doctor doc) => doctors.add(doc);
  void addNurse(Nurse nurse) => nurses.add(nurse);
  void addPatient(Patient patient) => patients.add(patient);

  void showAllStaff() {
    print("Doctors in $name:");
    for (var d in doctors) {
      d.showInfo();
      d.work();
    }

    print("\nNurses in $name:");
    for (var n in nurses) {
      n.showInfo();
      n.work();
    }
  }

  void showPatients() {
    print("\nPatients in $name:");
    for (var p in patients) {
      p.showInfo();
      p.getTreatmentInfo();
    }
  }

  void staffCount() {
    print("number of Doctores in $name = ${doctors.length}");
    print("number of Nurses in $name = ${nurses.length}");
    print("number of Patients that was treated in $name = ${patients.length}");
  }
}
