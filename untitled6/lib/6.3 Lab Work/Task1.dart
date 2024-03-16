class DistanceConverter {
  int feet;
  int inches;

  DistanceConverter(this.feet, this.inches);

  void convertToFeetAndInches() {
    if (inches >= 12) {
      int extraFeet = inches ~/ 12;
      feet += extraFeet;
      inches -= extraFeet * 12;
    }

    print('$feet feet and $inches inches');
  }
}

void main() {
  DistanceConverter converter = DistanceConverter(7, 30); // Input: 5 feet and 15 inches
  converter.convertToFeetAndInches(); // Output: 6 feet and 3 inches
}
