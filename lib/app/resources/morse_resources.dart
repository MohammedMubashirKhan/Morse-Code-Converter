import 'package:morse_code_converter/app/data/constans.dart';

class MorseResources {
  String morseToText(String morseCode) {
    List<String> words =
        morseCode.split('  '); // Split by two spaces to get words
    List<List<String>> lettersList =
        words.map((word) => word.split(' ')).toList();

    String result = '';

    for (List<String> letters in lettersList) {
      for (String letter in letters) {
        if (morseCodeDict.containsKey(letter)) {
          result += morseCodeDict[letter]!;
        }
      }
      result += ' ';
    }

    return result.trim();
  }

  String formatText(String text) {
    List<String> words = text.split(' ');

    List<String> formattedWords = words.map((word) {
      List<String> letters = word.split('');
      return letters.join(' ');
    }).toList();

    return formattedWords.join('   ');
  }
}
