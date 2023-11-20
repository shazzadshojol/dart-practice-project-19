import 'dart:ffi';
import 'dart:io';

void main() {
  List<List<String>> initialBoard =
      List.generate(3, (index) => List.generate(3, (index) => ''));
  mainGame(initialBoard, 2);
}

void mainGame(List<List<String>> board, int user) {
  var move;
  board == 1 ? user == 'X' : user == 'O';

  print('please choose your option: ');

  List userChoice = stdin.readLineSync()!.split(' ');
  board[int.parse(userChoice[0])][int.parse(userChoice[1])] = move;
  print(board);
}
