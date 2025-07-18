mixin Profession {
  double salary = 0;
  String department = "";

  void work();

  void attendMeeting() {
    print("Attending a meeting in the $department department.");
  }

  void receiveSalary() {
    print("Received salary: \$${salary.toStringAsFixed(2)}");
  }
}
