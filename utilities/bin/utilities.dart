import 'package:utilities/utilities.dart' as utilities;
import "dart:io";
import "package:intl/intl.dart";

void main(List<String> arguments) {
  print('Hello world: ${utilities.calculate()}!');

  List<String> books = ["one", "two", "Three"];

  print(books);

  books.add("ten");

  print(books);

  String message = "welcome";
  print(message.substring(2, 5));
  print(message.length);

  String greet = "great";

  String result = message + greet;
  print(result);

  Set<String> animals = {"dog", "cat", "lion"};
  animals.add("elephant");

  print(animals);

  Map<String, int> layer = {
    "side": 23,
    "top": 45,
    "bottom": 344,
  };

  print(layer);

//Date andd timee handling

  DateTime myDate = DateTime.now();

  print(myDate);
  DateTime spec = DateTime(2024, 4, 23, 12, 34);
  print(spec);

  String makeDate = "2024-05-23, 12:34";

  DateTime formatDate = DateFormat("yyyy-dd-mm, kk:mm").parse(makeDate);

  print(formatDate);

// main appplication

  File file = File("main.txt");

  stdout.write("Enter  user name:");
  String? name = stdin.readLineSync();
  stdout.write("Enter user surname:");
  String? surname = stdin.readLineSync();

  file.writeAsStringSync("$name $surname ${DateTime.now()}\n",
      mode: FileMode.append);
}
