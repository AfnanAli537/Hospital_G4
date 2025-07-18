import 'person.dart';
import 'profesion.dart';

class Nurse extends Person with Profession {
  String shift;

  Nurse({
    required String name,
    required int age,
    required String gender,
    required this.shift,
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
    print("Nurse $name is working on the $shift shift.");
  }

  void changeShift(String newShift) {
    shift = newShift;
    print("Nurse $name's shift changed to $shift.");
  }
}
