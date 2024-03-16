class AgeCalculator {
  DateTime dateOfBirth;

  AgeCalculator(this.dateOfBirth);

  void calculateAge() {
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateOfBirth);

    int years = difference.inDays ~/ 365;
    int months = (difference.inDays % 365) ~/ 30;
    int days = (difference.inDays % 365) % 30;

    print('$years years, $months months, and $days days');
  }
}

void main() {
  DateTime dob = DateTime(2005, 12, 15); // Example date of birth
  AgeCalculator calculator = AgeCalculator(dob);
  calculator.calculateAge(); // Output: 31 years, 9 months, and 29 days (depending on the current date)
}