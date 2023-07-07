class GlobalMethods {
  static int getDifference(String startRoll, String endRoll) {
    var startNumberOutput = startRoll.lastChars(4);
    var endNumberOutput = endRoll.lastChars(4);
    var difference = ((int.tryParse(endNumberOutput))! -
            (int.tryParse(startNumberOutput))!) +
        1;

    return difference;
  }
}

extension E on String {
  String lastChars(int n) => substring(length - n);
}
