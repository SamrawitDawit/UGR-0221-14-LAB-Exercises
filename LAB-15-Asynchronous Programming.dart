import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "A goal without a plan is just a wish",
    "The best way to predict the future is to invent it.",
    "All things are difficult before they are easy",
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  String quote = quotes[index];

  return quote;
}

void main() async {
  String quote = await fetchQuote();
  print("Today's Quote: $quote");
}
