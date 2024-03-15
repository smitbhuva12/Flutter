import 'dart:io';

class Train {
  int trainNumber;
  String trainName;
  String source;
  String destination;
  String trainTime;

  // Constructor
  Train(this.trainNumber, this.trainName, this.source, this.destination, this.trainTime);
}

void main() {
  List<Train> trains = [];

  // Function to add train records
  void addTrainRecord() {
    for (int i = 0; i < 3; i++) {
      print('Enter details for train ${i + 1}:');
      print('Enter train number:');
      int trainNumber = int.parse(stdin.readLineSync()!);
      print('Enter train name:');
      String trainName = stdin.readLineSync()!;
      print('Enter source:');
      String source = stdin.readLineSync()!;
      print('Enter destination:');
      String destination = stdin.readLineSync()!;
      print('Enter train time:');
      String trainTime = stdin.readLineSync()!;

      trains.add(Train(trainNumber, trainName, source, destination, trainTime));
    }
  }

  // Function to display record by searching train number
  void displayRecordByTrainNumber(int trainNumber) {
    bool found = false;
    for (var train in trains) {
      if (train.trainNumber == trainNumber) {
        print('Train found:');
        print('Train Number: ${train.trainNumber}');
        print('Train Name: ${train.trainName}');
        print('Source: ${train.source}');
        print('Destination: ${train.destination}');
        print('Train Time: ${train.trainTime}');
        found = true;
        break;
      }
    }
    if (!found) {
      print('Train with number $trainNumber not found.');
    }
  }

  // Adding train records
  addTrainRecord();

  // Example: Displaying record by searching train number
  print('Enter train number to search:');
  int searchTrainNumber = int.parse(stdin.readLineSync()!);
  displayRecordByTrainNumber(searchTrainNumber);
}
