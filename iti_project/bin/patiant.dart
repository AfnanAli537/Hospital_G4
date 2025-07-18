import 'person.dart';
import 'doctor.dart';
import 'nurse.dart';

class Patient extends Person {
  late String illness;
  Doctor treatedBy;
  Nurse caredBy;

  Patient({
    required String name,
    required int age,
    required String gender,
    required this.illness,
    required this.treatedBy,
    required this.caredBy,
    String? nationalId,
    String? address,
  }) : super(
          name,
          age,
          gender,
          nationalId ?? "00000000000000",
          address ?? "Unknown Address",
        );

  void getTreatment() {
    print("$name is being treated for $illness.");
  }

  void getTreatmentInfo() =>
      print("$name is being treated for $illness by Dr. ${treatedBy.name} and cared for by Nurse ${caredBy.name}.");
}
