import 'dart:io';
import 'dart:math';

import 'package:dartproject1/dartproject1.dart' as dartproject1;
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  List<int> roll_dice() {
    return [
      Random().nextInt(5) + 1,
      Random().nextInt(5) + 1,
      Random().nextInt(5) + 1
    ];
  }

  final user_score = 0;
  final CPU_score = 0;
  print('Enter the number of rounds you want to play: ');
  int? num_round = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < num_round; i++) {
    final user = roll_dice();
    final user_result = user.reduce((a, b) => a + b);
    final CPU = roll_dice();
    final CPU_result = CPU.reduce((a, b) => a + b);
    print('Dice roled by user: $user \t Dice roled by CPU: $CPU');
    if (user_result > CPU_result) {
      print("User resuls: $user_result \t\t CPU results: $CPU_result");
      print('User wins the round');
      user_score + 1;
    } else if (user_result < CPU_result) {
      print("User resuls: $user_result \t\t CPU results: $CPU_result");
      print('CPU wins the round');
      CPU_score + 1;
    } else {
      print("User resuls: $user_result \t\t CPU results: $CPU_result");
      print('Draw');
    }
    String? name = stdin.readLineSync();
  }
  if (user_score > CPU_score) {
    print('User wins the game');
  } else if (user_score < CPU_score) {
    print('CPU wins the game');
  } else {
    print('Draw');
  }
}
