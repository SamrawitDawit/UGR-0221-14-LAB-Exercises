import 'dart:io';

void main() {
  print('Insert the path of the file:');
  String filePath = stdin.readLineSync()!;

  try {
    File file = File(filePath);
    if (file.existsSync()) {
      String file_contents = file.readAsStringSync();
      print('File contents:\n$file_contents');
    } else {
      print('Error: File not found.');
    }
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: Failed to read the file. ${e.message}');
    } else {
      print('Something went wrong.');
    }
  }
}
