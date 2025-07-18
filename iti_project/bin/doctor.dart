import 'person.dart';
import 'profesion.dart';

class Doctor extends Person with Profession {
  String specialization;

  Doctor({
    required String name,
    required int age,
    required String gender,
    required this.specialization,
    String? nationalId,
    String? address,
  }) : super(
          name,
          age,
          gender,
          nationalId ?? "00000000000000",
          address ?? "Unknown Address",
        );

  @override
  void work() {
    print("Dr. $name is treating patients in $specialization.");
  }
}
