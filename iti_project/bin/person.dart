abstract class Person {
  String name;
  int age;
  String gender;
  String _nationalId;
  String address;

  Person(this.name, this.age, this.gender, this._nationalId, this.address);

  void showInfo() {
    print("Name: $name | Age: $age | Gender: $gender | ID: $_nationalId | Address: $address");
  }

  bool get isAdult => age >= 18;

  String get nationalId => _nationalId;

  set nationalId(String value) {
    if (value.length == 14) {
      _nationalId = value;
    } else {
      print("Invalid National ID: It must be 14 digits.");
    }
  }
}
