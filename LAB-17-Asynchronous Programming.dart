import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> data = ['Samri', 'Hiwi', 'Hanim', 'Sara'];

  return data;
}

void main() async {
  print('Loading data from the database...');
  List<String> data = await loadDataFromDatabase();
  print('loaded data: $data');
}
